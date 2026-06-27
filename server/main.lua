local STATE_FILE = 'data/state.json'
activeState = {}

local function loadState()
    local raw = LoadResourceFile(GetCurrentResourceName(), STATE_FILE)
    if not raw or raw == '' then
        warn('state.json empty or missing -- starting fresh')
        return {}
    end
    local ok, parsed = pcall(json.decode, raw)
    if ok and type(parsed) == 'table' then return parsed end
    warn('state.json malformed -- starting fresh')
    return {}
end

local function saveState()
    local ok, encoded = pcall(json.encode, activeState)
    if not ok then
        warn('could not encode state')
        return
    end
    local written = SaveResourceFile(GetCurrentResourceName(), STATE_FILE, encoded, -1)
    if not written then
        warn('SaveResourceFile failed for ' .. STATE_FILE)
    end
end

local function seedMissingInteriors()
    local ok, Registry = pcall(require, 'interiors.registry')
    if not ok or type(Registry) ~= 'table' then
        warn('registry load failed for seed -- ' .. tostring(Registry))
        return
    end

    local seeded = 0
    for id, def in pairs(Registry) do
        if not activeState[id] then
            local entry = { active = false }
            if type(def.defaults) == 'table' then
                for k, v in pairs(def.defaults) do
                    entry[k] = v
                end
            end
            activeState[id] = entry
            seeded = seeded + 1
            dbug('seed: ' .. id)
        end
    end

    if seeded > 0 then
        saveState()
        dbug('seeded ' .. seeded .. ' new interiors into state.json')
    end
end

local function broadcastInterior(intId, state)
    for _, pid in ipairs(GetPlayers()) do
        TriggerClientEvent('av_ipls:syncInterior', tonumber(pid), intId, state)
    end
end

AddEventHandler('onResourceStart', function(res)
    if res ~= GetCurrentResourceName() then return end
    activeState = loadState()
    seedMissingInteriors()

    local active, total = 0, 0
    for _, s in pairs(activeState) do
        total = total + 1
        if s.active then active = active + 1 end
    end
    dbug('ready -- ' .. total .. ' entries, ' .. active .. ' active')
    local shouldPrint = math.random(1,3)
    if shouldPrint == 1 then
        print([[
Thank you for downloading! Please report any bugs you find in the Discord.
^2Here's a coupon for an extra 15% in your next purchase: ^3IPL
^5https://av-scripts.tebex.io/^7]])
    end
end)

RegisterNetEvent('av_ipls:requestSync', function()
    local src = source
    TriggerClientEvent('av_ipls:syncState', src, activeState)
end)

RegisterNetEvent('av_ipls:toggleInterior', function(intId, enable)
    local src = source
    if not isAdmin(src) then
        TriggerClientEvent('av_ipls:notify', src, 'No admin permissions.', 'error')
        return
    end
    if enable then
        activeState[intId] = activeState[intId] or {}
        activeState[intId].active = true
    else
        activeState[intId] = activeState[intId] or {}
        activeState[intId].active = false
    end
    saveState()
    broadcastInterior(intId, activeState[intId])
end)

RegisterNetEvent('av_ipls:setVariant', function(intId, group, option)
    local src = source
    if not isAdmin(src) then return end
    activeState[intId] = activeState[intId] or { active = true }
    activeState[intId][group] = option
    saveState()
    broadcastInterior(intId, activeState[intId])
end)

RegisterNetEvent('av_ipls:clearVariant', function(intId, group)
    local src = source
    if not isAdmin(src) then return end
    if activeState[intId] then activeState[intId][group] = nil end
    saveState()
    broadcastInterior(intId, activeState[intId])
end)

RegisterNetEvent('av_ipls:batchUpdate', function(payload)
    local src = source
    if not isAdmin(src) then
        warn('batchUpdate: denied for src=' .. tostring(src))
        return
    end
    if type(payload) ~= 'table' then
        warn('batchUpdate: invalid payload type=' .. type(payload))
        return
    end
    local changed = {}
    for _, entry in ipairs(payload) do
        local intId = entry.id
        if intId and type(intId) == 'string' then
            activeState[intId] = activeState[intId] or {}
            if entry.active ~= nil then activeState[intId].active = entry.active end
            if type(entry.variants) == 'table' then
                for group, option in pairs(entry.variants) do
                    activeState[intId][group] = option
                    dbug('batchUpdate: ' .. intId .. '.' .. group .. ' = ' .. tostring(option))
                end
            end
            changed[#changed + 1] = intId
            dbug('batchUpdate: saved ' .. intId .. ' active=' .. tostring(entry.active))
        end
    end
    saveState()
    for _, intId in ipairs(changed) do
        dbug('batchUpdate: broadcasting ' .. intId .. ' to all clients')
        broadcastInterior(intId, activeState[intId])
    end
    dbug('batchUpdate: done, ' .. #changed .. ' interiors broadcast')
end)

RegisterNetEvent('av_ipls:refreshInterior', function(intId)
    local src = source
    if not isAdmin(src) then return end
    TriggerClientEvent('av_ipls:doRefreshInterior', -1, intId)
end)
