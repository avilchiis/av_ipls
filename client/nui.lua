RegisterNUICallback('getRegistryData', function(_, cb)
    local out = {}
    for id, def in pairs(Registry) do
        out[id] = { id=def.id, label=def.label, category=def.category,
                    coords=def.coords, interior_id=def.interior_id,
                    min_build=def.min_build, variants=def.variants, defaults=def.defaults }
    end
    cb({ registry = out, state = serverState })
end)

RegisterNUICallback('toggleInterior', function(data, cb) TriggerServerEvent('av_ipls:toggleInterior', data.id, data.enable); cb("ok") end)
RegisterNUICallback('setVariant', function(data, cb) TriggerServerEvent('av_ipls:setVariant', data.id, data.group, data.option); cb("ok") end)
RegisterNUICallback('batchUpdate', function(data, cb)
    TriggerServerEvent('av_ipls:batchUpdate', data.payload)

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
                applyState(entry.id)
            end
        end
    end
    cb("ok")
end)
RegisterNUICallback('refreshInterior', function(data, cb) TriggerServerEvent('av_ipls:refreshInterior', data.id); cb("ok") end)
local ghostKeybind = nil

local function ensureGhostKeybind()
    if ghostKeybind then return end
    ghostKeybind = lib.addKeybind({
        name = Config.GhostKeybind.name,
        description = Config.GhostKeybind.description,
        defaultKey = Config.GhostKeybind.defaultKey,
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
    local coords = GetEntityCoords(cache.ped)
    SetEntityCoords(cache.ped, coords.x, coords.y, coords.z + 0.0001, false, false, false, true)
    cb("ok")
end)

RegisterNUICallback('ghostMode', function(_, cb)
    ensureGhostKeybind()
    ghostKeybind:disable(false)
    SetNuiFocus(false, false)
    cb("ok")
end)

RegisterNUICallback('previewLocal', function(data, cb)
    local id = data.id
    if not Registry[id] then cb("ok") return end
    local override = { active = data.active }
    if type(data.variants) == 'table' then
        for group, option in pairs(data.variants) do
            override[group] = option
        end
    end
    localOverrides[id] = override
    applyState(id)
    cb("ok")
end)

RegisterNUICallback('teleportToCoords', function(data, cb)
    dbug('Teleporting player to coords: %.4f, %.4f, %.4f', data.x, data.y, data.z)
    SetEntityCoords(cache.ped, data.x * 1.0, data.y * 1.0, data.z * 1.0, false, false, false, true)
    cb("ok")
end)

local function detectCurrentInterior()
    local ped = PlayerPedId()
    local currentIid = GetInteriorFromEntity(ped)
    if currentIid ~= 0 then
        for id, def in pairs(Registry) do
            if def.interior_id then
                if type(def.interior_id) == 'number' and def.interior_id == currentIid then
                    return id
                elseif type(def.interior_id) == 'table' then
                    for _, iid in pairs(def.interior_id) do
                        if iid == currentIid then return id end
                    end
                end
            end
        end
    end
    local pedCoords = GetEntityCoords(ped)
    local bestId, bestDist = nil, 20.0
    for id, def in pairs(Registry) do
        if not hasValidInteriorId(def.interior_id) and def.coords then
            local d = #(pedCoords - vector3(def.coords.x, def.coords.y, def.coords.z))
            if d < bestDist then
                bestDist = d
                bestId = id
            end
        end
    end
    return bestId
end

RegisterNUICallback('locateInterior', function(_, cb)
    cb({ interiorId = detectCurrentInterior() })
end)

RegisterNetEvent("av_ipls:openAdminMenu", function()
    ensureGhostKeybind()
    local out = {}
    for id, def in pairs(Registry) do
        out[id] = { id=def.id, label=def.label, category=def.category, coords=def.coords, min_build=def.min_build, variants=def.variants, defaults=def.defaults }
    end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'admin',
        data = {
            registry = out,
            state = serverState,
            gameBuild = gameBuild,
            currentInteriorId = detectCurrentInterior(),
        }
    })
end)
