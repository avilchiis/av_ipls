isReady = false
currentInteriorId = 0

CreateThread(function()
    while true do
        currentInteriorId = GetInteriorFromEntity(PlayerPedId())
        Wait(500)
    end
end)

CreateThread(function()
    while not NetworkIsPlayerActive(PlayerId()) do Wait(1) end
    TriggerServerEvent('av_ipls:requestSync')
    while not isReady do Wait(100) end
    local cullEntries = buildCullEntries()
    if #cullEntries == 0 then return end
    dbug('cull thread started — ' .. #cullEntries .. ' entries')
    while true do
        local sleep = 500
        if currentInteriorId ~= 0 then
            for _, def in ipairs(cullEntries) do
                local defIid = getCullInteriorId(def)
                if defIid and currentInteriorId == defIid then
                    while currentInteriorId == defIid do
                        for _, model in ipairs(def.cull_models) do
                            EnableExteriorCullModelThisFrame(GetHashKey(model))
                        end
                        DisableOcclusionThisFrame()
                        Wait(0)
                    end
                    sleep = 0
                    break
                end
            end
        end
        Wait(sleep)
    end
end)

RegisterNetEvent('av_ipls:syncState', function(state)
    serverState = state or {}
    isReady = true
    SendNUIMessage({ action = 'syncState', data = serverState })
    applyFullState()
end)

RegisterNetEvent('av_ipls:syncInterior', function(intId, state)
    dbug(('syncInterior: %s active=%s'):format(tostring(intId), tostring(state and state.active)))
    serverState[intId] = state or nil

    SendNUIMessage({ action = 'syncInterior', data = { id = intId, state = state } })
    if not isReady then
        dbug('syncInterior: not ready, skipping ' .. tostring(intId))
        return
    end
    applyState(intId)
end)

RegisterNetEvent('av_ipls:doRefreshInterior', function(intId)
    local def = Registry[intId]
    if def and hasValidInteriorId(def.interior_id) then
        refreshInterior(def.interior_id)
    end
end)
