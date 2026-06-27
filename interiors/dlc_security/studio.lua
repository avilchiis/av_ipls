-- The Contract / Studio
-- Location: Recording studio  (-1010.22, -52.21, -100.0)

return {
    id = "studio",
    label = "Studio",
    category = "The Contract",
    min_build = 2545,
    coords = { x = -1010.22, y = -52.21, z = -100.0 },
    interior_id = 286977,
    ipls = {
        load = {
            "sf_int_placement_sec_interior_1_dlc_studio_sec_milo_ ",
        },
        remove = {
        },
    },
    variants = {
    FixStuExtP3A1 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_FIX_STU_EXT_P3A1", off = "" },
    },
    FixTrip1IntP2 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_FIX_TRIP1_INT_P2", off = "" },
    },
    FixStuExtP1 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_FIX_STU_EXT_P1", off = "" },
    },
    Fire = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Fire", off = "" },
    },
    Default = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_default", off = "" },
    },
},
    defaults = {
    Fire = "on",
    Default = "on",
},
}