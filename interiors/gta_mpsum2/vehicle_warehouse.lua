-- GTA Online Updates / Vehicle Warehouse
-- 800.13696, -3001.4297, -65.14074
return {
    id = "mpsum2_vehicle_warehouse",
    label = "Vehicle Warehouse",
    category = "GTA Online Updates",
    min_build = 2699,
    coords = { x =800.13696, y = -3001.4297, z = -65.14074 },
    interior_id = 289537,
    ipls = {
        load = {
            "reh_int_placement_sum2_interior_0_dlc_int_03_sum2_milo_",
        },
        remove = {
        },
    },
    variants = {
    Office = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_office", off = "" },
    },
    Lights = {
        _type = "select",
        _nullable = false,
        options = {
            option1 = "entity_set_light_option_1",
            option2 = "entity_set_light_option_2",
            option3 = "entity_set_light_option_3",
        },
    },
    Tints = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_tint_options", off = "" },
    },
},
    defaults = {
    Office = "on",
    Lights = "option1",
    Tints = "on",
},
}