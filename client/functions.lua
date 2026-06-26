-- interior_id may be a number or a table { Name = int, ... }

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

-- ── IPL ───────────────────────────────────────────────────────────────────────

function applyIPLs(def, enable)
    dbug(('applyIPLs id=%s enable=%s count=%d'):format(def.id, tostring(enable), #def.ipls.load))
    for _, ipl in ipairs(def.ipls.load) do
        if enable then
            if not IsIplActive(ipl) then RequestIpl(ipl) end
        else
            if IsIplActive(ipl) then RemoveIpl(ipl) end
        end
    end
    for _, ipl in ipairs(def.ipls.remove) do
        if enable and IsIplActive(ipl) then RemoveIpl(ipl) end
    end
end

-- Applies entity-set selection variants (select, toggle, stages).
-- Does NOT handle color type — use applyColorVariant for that.
function applyVariant(interior_id, optionKey, vdata)
    if not interior_id or not vdata or not optionKey then return end
    local opts = vdata.options
    local vtype = vdata._type

    if vtype == 'color' then return end  -- handled separately

    forEachInteriorId(interior_id, function(iid)
        if vtype == 'toggle' then
            local val   = opts[optionKey]
            local other = (optionKey == 'on') and opts['off'] or opts['on']
            if val   and not IsInteriorEntitySetActive(iid, val)   then ActivateInteriorEntitySet(iid, val)   end
            if other and     IsInteriorEntitySetActive(iid, other) then DeactivateInteriorEntitySet(iid, other) end

        elseif vtype == 'stages' then
            for _, v in pairs(opts) do
                if type(v) == 'string' and IsInteriorEntitySetActive(iid, v) then
                    DeactivateInteriorEntitySet(iid, v)
                elseif type(v) == 'table' then
                    for _, s in ipairs(v) do
                        if type(s) == 'string' and IsInteriorEntitySetActive(iid, s) then
                            DeactivateInteriorEntitySet(iid, s)
                        end
                    end
                end
            end
            local val = opts[optionKey]
            if val then
                if type(val) == 'string' then
                    ActivateInteriorEntitySet(iid, val)
                elseif type(val) == 'table' then
                    for _, s in ipairs(val) do ActivateInteriorEntitySet(iid, s) end
                end
            end

        else -- select / select_nullable
            for _, v in pairs(opts) do
                if type(v) == 'string' and IsInteriorEntitySetActive(iid, v) then
                    DeactivateInteriorEntitySet(iid, v)
                end
            end
            local val = opts[optionKey]
            if val and type(val) == 'string' then ActivateInteriorEntitySet(iid, val) end
        end
    end)
end

-- Applies a color variant:
--   entity_set  — fixed entity set: activate it and set its color
--   _target     — follow another variant's chosen entity set, color only
-- merged      = the full merged state for this interior
-- variantsDef = def.variants (to resolve _target)
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
        if vdata.entity_set then
            if not IsInteriorEntitySetActive(iid, entitySet) then
                ActivateInteriorEntitySet(iid, entitySet)
            end
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
                if es and IsInteriorEntitySetActive(iid, es) then
                    DeactivateInteriorEntitySet(iid, es)
                    SetInteriorEntitySetColor(iid, es, 0)
                end
            else
                for _, v in pairs(vdata.options) do
                    if type(v) == 'string' and IsInteriorEntitySetActive(iid, v) then
                        DeactivateInteriorEntitySet(iid, v)
                    elseif type(v) == 'table' then
                        for _, s in ipairs(v) do
                            if type(s) == 'string' and IsInteriorEntitySetActive(iid, s) then
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

-- ── State ─────────────────────────────────────────────────────────────────────

function getMerged(intId)
    local sv = serverState[intId]
    local ov = localOverrides[intId]
    if not sv and not ov then return nil end
    local merged = {}
    if sv then for k, v in pairs(sv) do merged[k] = v end end
    if ov then for k, v in pairs(ov) do merged[k] = v end end
    return merged
end

function applyState(intId, state)
    local def = Registry[intId]
    if not def then return end

    if def.min_build and gameBuild < def.min_build then
        dbug(('applyState skip %s: requires build %d, server has %d'):format(intId, def.min_build, gameBuild))
        return
    end

    local hasIPLs = #def.ipls.load > 0 or #def.ipls.remove > 0
    local hasInteriorId = hasValidInteriorId(def.interior_id)

    if not hasIPLs and not hasInteriorId then return end

    local hasServerState = serverState[intId] ~= nil
    local merged = getMerged(intId)
    local active

    if hasServerState then
        active = merged and (merged.active ~= false)
        dbug(('applyState [SV] id=%s active=%s'):format(intId, tostring(active)))
    else
        local ovActive = localOverrides[intId] and localOverrides[intId].active
        active = ovActive ~= false
        dbug(('applyState [DEF] id=%s active=%s'):format(intId, tostring(active)))
    end

    if hasIPLs then applyIPLs(def, active) end

    if not hasInteriorId then return end

    if not active then
        clearAllVariants(def.interior_id, def.variants)
    elseif def.variants then
        -- Pass 1: entity-set variants (select, toggle, stages)
        for vname, vdata in pairs(def.variants) do
            if vdata._type ~= 'color' then
                local chosen
                if hasServerState then
                    chosen = merged[vname] or (def.defaults and def.defaults[vname])
                else
                    chosen = (localOverrides[intId] and localOverrides[intId][vname])
                           or (def.defaults and def.defaults[vname])
                end
                if chosen then applyVariant(def.interior_id, chosen, vdata) end
            end
        end
        -- Pass 2: color variants (need entity sets from pass 1 to be active first)
        for vname, vdata in pairs(def.variants) do
            if vdata._type == 'color' then
                applyColorVariant(def.interior_id, vname, vdata, merged, def.variants)
            end
        end
    end

    refreshInterior(def.interior_id)
end

function applyFullState()
    for intId in pairs(Registry) do
        applyState(intId, getMerged(intId))
    end
end

-- ── Cull ──────────────────────────────────────────────────────────────────────

function getCullInteriorId(def)
    if type(def.interior_id) == 'number' then
        return def.interior_id
    end
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
