-- Exports
exports('loadLocal', function(intId)
    local def = Registry[intId]
    if not def then return false end
    localOverrides[intId] = localOverrides[intId] or {}
    localOverrides[intId].active = true
    applyState(intId, getMerged(intId))
    return true
end)

exports('removeLocal', function(intId)
    if not Registry[intId] then return false end
    localOverrides[intId] = nil
    applyState(intId, getMerged(intId))
    return true
end)

exports('setVariantLocal', function(intId, group, optionKey)
    local def = Registry[intId]
    if not def or not (def.variants and def.variants[group]) then return false end
    localOverrides[intId] = localOverrides[intId] or {}
    localOverrides[intId][group] = optionKey
    local vdata = def.variants[group]
    if vdata._type == 'color' then
        applyColorVariant(def.interior_id, group, vdata, getMerged(intId), def.variants)
    else
        applyVariant(def.interior_id, optionKey, vdata)
    end
    if hasValidInteriorId(def.interior_id) then refreshInterior(def.interior_id) end
    return true
end)

exports('clearVariantLocal', function(intId, group)
    local def = Registry[intId]
    if not def then return false end
    if localOverrides[intId] then localOverrides[intId][group] = nil end
    if def.variants and def.variants[group] and hasValidInteriorId(def.interior_id) then
        forEachInteriorId(def.interior_id, function(iid)
            for _, v in pairs(def.variants[group].options) do
                if type(v) == 'string' and IsInteriorEntitySetActive(iid, v) then
                    DeactivateInteriorEntitySet(iid, v)
                end
            end
        end)
        local sv = serverState[intId]
        if sv and sv[group] then
            applyVariant(def.interior_id, sv[group], def.variants[group])
        elseif def.defaults and def.defaults[group] then
            applyVariant(def.interior_id, def.defaults[group], def.variants[group])
        end
        refreshInterior(def.interior_id)
    end
    return true
end)

exports('resetLocal', function(intId)  if not Registry[intId] then return false end; localOverrides[intId] = nil; applyState(intId, serverState[intId]); return true end)
exports('sync', function() TriggerServerEvent('av_ipls:requestSync') end)
exports('getState', function(intId)  return getMerged(intId) end)
exports('getServerState', function(intId)  return serverState[intId] end)
exports('getLocalOverrides', function(intId)  return localOverrides[intId] end)
exports('isActive', function(intId)  local s = getMerged(intId); return s ~= nil and s.active ~= false end)
exports('getRegistry', function() return Registry end)

-- NUI callbacks
RegisterNUICallback('getRegistryData', function(_, cb)
    local out = {}
    for id, def in pairs(Registry) do
        out[id] = { id=def.id, label=def.label, category=def.category,
                    coords=def.coords, interior_id=def.interior_id,
                    min_build=def.min_build, variants=def.variants, defaults=def.defaults }
    end
    cb({ registry = out, state = serverState })
end)

RegisterNUICallback('toggleInterior',  function(data, cb) TriggerServerEvent('av_ipls:toggleInterior', data.id, data.enable); cb({ ok=true }) end)
RegisterNUICallback('setVariant',      function(data, cb) TriggerServerEvent('av_ipls:setVariant', data.id, data.group, data.option); cb({ ok=true }) end)
RegisterNUICallback('batchUpdate', function(data, cb)
    TriggerServerEvent('av_ipls:batchUpdate', data.payload)
    -- Optimistically apply state locally so IPLs refresh immediately
    if type(data.payload) == 'table' then
        for _, entry in ipairs(data.payload) do
            if entry.id and Registry[entry.id] then
                serverState[entry.id] = serverState[entry.id] or {}
                serverState[entry.id].active = entry.active
                if type(entry.variants) == 'table' then
                    for k, v in pairs(entry.variants) do
                        serverState[entry.id][k] = v
                    end
                end
                localOverrides[entry.id] = nil
                applyState(entry.id, getMerged(entry.id))
            end
        end
    end
    cb({ ok=true })
end)
RegisterNUICallback('refreshInterior', function(data, cb) TriggerServerEvent('av_ipls:refreshInterior', data.id); cb({ ok=true }) end)
local ghostKeybind = nil

local function ensureGhostKeybind()
    if ghostKeybind then return end
    ghostKeybind = lib.addKeybind({
        name        = Config.GhostKeybind.name,
        description = Config.GhostKeybind.description,
        defaultKey  = Config.GhostKeybind.defaultKey,
        allowInPauseMenu = false,
        onPressed = function()
            ghostKeybind:disable(true)
            SetNuiFocus(true, true)
            SendNUIMessage({ action = 'restoreFocus' })
        end,
    })
    ghostKeybind:disable(true)
end

RegisterNUICallback('closeMenu', function(_, cb)
    if ghostKeybind then ghostKeybind:disable(true) end
    SetNuiFocus(false, false)
    localOverrides = {}
    applyFullState()
    cb({ ok = true })
end)

RegisterNUICallback('ghostMode', function(_, cb)
    ensureGhostKeybind()
    ghostKeybind:disable(false)
    SetNuiFocus(false, false)
    cb({ ok = true })
end)

-- Apply a full draft state locally (admin preview only, not synced to server)
RegisterNUICallback('previewLocal', function(data, cb)
    local id = data.id
    if not Registry[id] then cb({ ok = false }) return end
    local override = { active = data.active }
    if type(data.variants) == 'table' then
        for group, option in pairs(data.variants) do
            override[group] = option
        end
    end
    localOverrides[id] = override
    applyState(id, getMerged(id))
    cb({ ok = true })
end)

-- Teleport player to given world coords
RegisterNUICallback('teleportToCoords', function(data, cb)
    dbug('Teleporting player to coords: %.4f, %.4f, %.4f', data.x, data.y, data.z)
    SetEntityCoords(cache.ped, data.x * 1.0, data.y * 1.0, data.z * 1.0, false, false, false, true)
    cb({ ok = true })
end)

-- Commands
RegisterNetEvent("av_ipls:openAdminMenu", function()
    ensureGhostKeybind()
    local out = {}
    for id, def in pairs(Registry) do
        out[id] = { id=def.id, label=def.label, category=def.category,
                    coords=def.coords, min_build=def.min_build, variants=def.variants, defaults=def.defaults }
    end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'admin',
        data = {
            registry = out,
            state = serverState,
            gameBuild = gameBuild,
        }
    })
end)