function forEachInteriorId(interior_id, fn)
    if type(interior_id) == 'number' then
        fn(interior_id)
    elseif type(interior_id) == 'table' then
        for _, id in pairs(interior_id) do
            if type(id) == 'number' then fn(id) end
        end
    end
end

function hasValidInteriorId(interior_id)
    if type(interior_id) == 'number' then return true end
    if type(interior_id) == 'table' then
        for _, id in pairs(interior_id) do
            if type(id) == 'number' then return true end
        end
    end
    return false
end

function resolveActiveInteriorId(def, merged)
    if type(def.interior_id) ~= 'table' then return def.interior_id end
    if not def.variants then return def.interior_id end
    for vname, vdata in pairs(def.variants) do
        if vdata._type == 'ipl_select' then
            local chosen = (merged and merged[vname]) or (def.defaults and def.defaults[vname])
            if chosen and type(def.interior_id[chosen]) == 'number' then
                return def.interior_id[chosen]
            end
            break
        end
    end
    return def.interior_id
end

function applyIPLs(def, enable)
    dbug(('applyIPLs id=%s enable=%s'):format(def.id, tostring(enable)))
    for _, ipl in ipairs(def.ipls.load) do
        if enable then
            RequestIpl(ipl)
        else
            if IsIplActive(ipl) then RemoveIpl(ipl) end
        end
    end
    for _, ipl in ipairs(def.ipls.remove) do
        if enable then RemoveIpl(ipl) end
    end
    if not enable and def.variants then
        for _, vdata in pairs(def.variants) do
            if vdata._type == 'ipl_select' then
                for _, iplName in pairs(vdata.options) do
                    if type(iplName) == 'string' and iplName ~= '' then
                        RemoveIpl(iplName)
                    end
                end
            end
        end
    end
end

function applyVariant(interior_id, optionKey, vdata)
    if not interior_id or not vdata or not optionKey then return end
    local opts = vdata.options
    local vtype = vdata._type
    if vtype == 'color' then return end
    if vtype == 'ipl_select' then
        for k, iplName in pairs(opts) do
            if type(iplName) == 'string' and iplName ~= '' then
                if k == optionKey then
                    if not IsIplActive(iplName) then RequestIpl(iplName) end
                else
                    if IsIplActive(iplName) then RemoveIpl(iplName) end
                end
            end
        end
        return
    end
    forEachInteriorId(interior_id, function(iid)
        if vtype == 'toggle' then
            local val = opts[optionKey]
            local other = (optionKey == 'on') and opts['off'] or opts['on']
            if val and val ~= '' and not IsInteriorEntitySetActive(iid, val) then ActivateInteriorEntitySet(iid, val) end
            if other and other ~= '' and IsInteriorEntitySetActive(iid, other) then DeactivateInteriorEntitySet(iid, other) end
        elseif vtype == 'stages' then
            for _, v in pairs(opts) do
                if type(v) == 'string' and v ~= '' and IsInteriorEntitySetActive(iid, v) then
                    DeactivateInteriorEntitySet(iid, v)
                elseif type(v) == 'table' then
                    for _, s in ipairs(v) do
                        if type(s) == 'string' and s ~= '' and IsInteriorEntitySetActive(iid, s) then
                            DeactivateInteriorEntitySet(iid, s)
                        end
                    end
                end
            end
            local val = opts[optionKey]
            if val then
                if type(val) == 'string' and val ~= '' then
                    ActivateInteriorEntitySet(iid, val)
                elseif type(val) == 'table' then
                    for _, s in ipairs(val) do
                        if type(s) == 'string' and s ~= '' then ActivateInteriorEntitySet(iid, s) end
                    end
                end
            end
        else
            for _, v in pairs(opts) do
                if type(v) == 'string' and v ~= '' and IsInteriorEntitySetActive(iid, v) then
                    DeactivateInteriorEntitySet(iid, v)
                end
            end
            local val = opts[optionKey]
            if val and type(val) == 'string' and val ~= '' then ActivateInteriorEntitySet(iid, val) end
        end
    end)
end

function applyColorVariant(interior_id, vname, vdata, merged, variantsDef)
    if not interior_id or not vdata or not merged then return end
    local optionKey = merged[vname]
    if not optionKey then return end
    local colorIndex = vdata.options and vdata.options[optionKey]
    if type(colorIndex) ~= 'number' then return end
    local entitySet
    if vdata.entity_set then
        entitySet = vdata.entity_set
    elseif vdata._target and variantsDef then
        local targetDef = variantsDef[vdata._target]
        local targetKey = merged[vdata._target]
        if targetDef and targetKey and targetDef.options then
            local v = targetDef.options[targetKey]
            if type(v) == 'string' then entitySet = v end
        end
    end
    if not entitySet then return end
    forEachInteriorId(interior_id, function(iid)
        if vdata.entity_set and not IsInteriorEntitySetActive(iid, entitySet) then
            ActivateInteriorEntitySet(iid, entitySet)
        end
        SetInteriorEntitySetColor(iid, entitySet, colorIndex)
    end)
end

function clearAllVariants(interior_id, variantsDef)
    if not interior_id or not variantsDef then return end
    forEachInteriorId(interior_id, function(iid)
        for _, vdata in pairs(variantsDef) do
            if vdata._type == 'color' then
                local es = vdata.entity_set
                if es and es ~= '' and IsInteriorEntitySetActive(iid, es) then
                    DeactivateInteriorEntitySet(iid, es)
                    SetInteriorEntitySetColor(iid, es, 0)
                end
            elseif vdata._type ~= 'ipl_select' then
                for _, v in pairs(vdata.options) do
                    if type(v) == 'string' and v ~= '' and IsInteriorEntitySetActive(iid, v) then
                        DeactivateInteriorEntitySet(iid, v)
                    elseif type(v) == 'table' then
                        for _, s in ipairs(v) do
                            if type(s) == 'string' and s ~= '' and IsInteriorEntitySetActive(iid, s) then
                                DeactivateInteriorEntitySet(iid, s)
                            end
                        end
                    end
                end
            end
        end
    end)
end

function refreshInterior(interior_id)
    forEachInteriorId(interior_id, RefreshInterior)
end

function getMerged(intId)
    local sv = serverState[intId]
    local ov = localOverrides[intId]
    if not sv and not ov then return nil end
    local merged = {}
    if sv then for k, v in pairs(sv) do merged[k] = v end end
    if ov then for k, v in pairs(ov) do merged[k] = v end end
    return merged
end

function applyState(intId)
    local def = Registry[intId]
    if not def then return end
    if def.min_build and gameBuild < def.min_build then
        dbug(('applyState skip %s: build %d < %d'):format(intId, gameBuild, def.min_build))
        return
    end
    local hasIPLs = #def.ipls.load > 0 or #def.ipls.remove > 0
    local hasInteriorId = hasValidInteriorId(def.interior_id)
    local hasIplSelect = false
    if def.variants then
        for _, vdata in pairs(def.variants) do
            if vdata._type == 'ipl_select' then hasIplSelect = true; break end
        end
    end
    if not hasIPLs and not hasIplSelect and not hasInteriorId then return end
    local merged = getMerged(intId)
    local active
    if serverState[intId] ~= nil then
        active = merged and (merged.active ~= false)
    else
        active = (localOverrides[intId] and localOverrides[intId].active) ~= false
    end
    dbug(('applyState id=%s active=%s'):format(intId, tostring(active)))

    if hasIplSelect and hasInteriorId then
        local activeInteriorId = resolveActiveInteriorId(def, merged)
        if not active then
            local playerIid = GetInteriorFromEntity(PlayerPedId())
            if type(def.interior_id) == 'table' then
                for _, iid in pairs(def.interior_id) do
                    if type(iid) == 'number' and iid == playerIid then return end
                end
            elseif type(activeInteriorId) == 'number' and activeInteriorId == playerIid then
                return
            end
            if type(def.interior_id) == 'table' then
                for _, iid in pairs(def.interior_id) do
                    if type(iid) == 'number' then
                        clearAllVariants(iid, def.variants)
                        RefreshInterior(iid)
                    end
                end
            else
                clearAllVariants(activeInteriorId, def.variants)
            end
            applyIPLs(def, false)
            return
        end
        local ped = PlayerPedId()
        local oldIid = GetInteriorFromEntity(ped)
        if oldIid ~= 0 and oldIid ~= activeInteriorId then
            DisableInterior(oldIid, true)
            UnpinInterior(oldIid)
        end
        if type(def.interior_id) == 'table' then
            for _, iid in pairs(def.interior_id) do
                if type(iid) == 'number' then
                    clearAllVariants(iid, def.variants)
                    RefreshInterior(iid)
                end
            end
        end
        for vname, vdata in pairs(def.variants) do
            if vdata._type == 'ipl_select' then
                local chosen = (merged and merged[vname]) or (def.defaults and def.defaults[vname])
                if chosen then
                    for k, iplName in pairs(vdata.options) do
                        if type(iplName) == 'string' and iplName ~= '' then
                            if k == chosen then
                                if not IsIplActive(iplName) then RequestIpl(iplName) end
                            else
                                if IsIplActive(iplName) then RemoveIpl(iplName) end
                            end
                        end
                    end
                end
                break
            end
        end
        LoadInterior(activeInteriorId)
        PinInteriorInMemory(activeInteriorId)
        SetInteriorActive(activeInteriorId, true)
        if def.variants then
            for vname, vdata in pairs(def.variants) do
                if vdata._type ~= 'color' and vdata._type ~= 'ipl_select' then
                    local chosen = (merged and merged[vname]) or (def.defaults and def.defaults[vname])
                    if chosen then applyVariant(activeInteriorId, chosen, vdata) end
                end
            end
            for vname, vdata in pairs(def.variants) do
                if vdata._type == 'color' then
                    applyColorVariant(activeInteriorId, vname, vdata, merged, def.variants)
                end
            end
        end
        RefreshInterior(activeInteriorId)
        ClearInteriorForEntity(ped)
        return
    end

    if hasIPLs then applyIPLs(def, active) end
    if not hasInteriorId then
        if hasIplSelect and active and def.variants then
            for vname, vdata in pairs(def.variants) do
                if vdata._type == 'ipl_select' then
                    local chosen = (merged and merged[vname]) or (def.defaults and def.defaults[vname])
                    if chosen then
                        for k, iplName in pairs(vdata.options) do
                            if type(iplName) == 'string' and iplName ~= '' then
                                if k == chosen then
                                    if not IsIplActive(iplName) then RequestIpl(iplName) end
                                else
                                    if IsIplActive(iplName) then RemoveIpl(iplName) end
                                end
                            end
                        end
                    end
                end
            end
        end
        if active and def.coords and def.variants then
            local c = def.coords
            local iid = GetInteriorAtCoords(c.x, c.y, c.z)
            if iid ~= 0 then
                for vname, vdata in pairs(def.variants) do
                    if vdata._type ~= 'color' and vdata._type ~= 'ipl_select' then
                        local chosen = (merged and merged[vname]) or (def.defaults and def.defaults[vname])
                        if chosen then applyVariant(iid, chosen, vdata) end
                    end
                end
                for vname, vdata in pairs(def.variants) do
                    if vdata._type == 'color' then
                        applyColorVariant(iid, vname, vdata, merged, def.variants)
                    end
                end
                RefreshInterior(iid)
            end
        end
        return
    end

    local activeInteriorId = resolveActiveInteriorId(def, merged)

    if not active then
        clearAllVariants(activeInteriorId, def.variants)
        refreshInterior(activeInteriorId)
    elseif hasIPLs and def.variants then
        -- IPLs are async — wait until all loaded before applying entity sets
        local capturedIntId = intId
        CreateThread(function()
            local timeout = 0
            repeat
                Wait(50)
                timeout = timeout + 50
                local allActive = true
                for _, ipl in ipairs(def.ipls.load) do
                    if not IsIplActive(ipl) then allActive = false; break end
                end
                if allActive then break end
            until timeout >= 5000
            -- abort if interior was disabled while we were waiting
            local sv = serverState[capturedIntId]
            local ov = localOverrides[capturedIntId]
            local stillActive = (sv == nil and ov == nil) or
                                 (sv ~= nil and sv.active ~= false) or
                                 (ov ~= nil and ov.active ~= false)
            if not stillActive then return end
            for vname, vdata in pairs(def.variants) do
                if vdata._type ~= 'color' and vdata._type ~= 'ipl_select' then
                    local chosen = (merged and merged[vname]) or (def.defaults and def.defaults[vname])
                    if chosen then applyVariant(activeInteriorId, chosen, vdata) end
                end
            end
            for vname, vdata in pairs(def.variants) do
                if vdata._type == 'color' then
                    applyColorVariant(activeInteriorId, vname, vdata, merged, def.variants)
                end
            end
            refreshInterior(activeInteriorId)
        end)
    elseif def.variants then
        for vname, vdata in pairs(def.variants) do
            if vdata._type ~= 'color' then
                local chosen = (merged and merged[vname]) or (def.defaults and def.defaults[vname])
                if chosen then applyVariant(activeInteriorId, chosen, vdata) end
            end
        end
        for vname, vdata in pairs(def.variants) do
            if vdata._type == 'color' then
                applyColorVariant(activeInteriorId, vname, vdata, merged, def.variants)
            end
        end
        refreshInterior(activeInteriorId)
    else
        refreshInterior(activeInteriorId)
    end
end

function applyFullState()
    for intId in pairs(Registry) do
        applyState(intId)
    end
end

function getCullInteriorId(def)
    if type(def.interior_id) == 'number' then return def.interior_id end
    if def.cull_coords then
        local c = def.cull_coords
        local iid = GetInteriorAtCoords(c.x, c.y, c.z)
        return iid ~= 0 and iid or nil
    end
    return nil
end

function buildCullEntries()
    local entries = {}
    for _, def in pairs(Registry) do
        if def.cull_models and #def.cull_models > 0 then
            if type(def.interior_id) == 'number' or def.cull_coords then
                entries[#entries + 1] = def
            end
        end
    end
    return entries
end
