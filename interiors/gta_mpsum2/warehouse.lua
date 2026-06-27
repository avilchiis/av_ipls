-- GTA Online Updates / Warehouse

return {
    id = "warehouse",
    label = "Warehouse",
    category = "GTA Online Updates",
    min_build = 2699,
    coords = { x = 849.1047, y = -3000.209, z = -45.9743 },
    interior_id = 289793,
    ipls = {
        load = {
            "reh_int_placement_sum2_interior_1_dlc_int_04_sum2_milo_",
        },
        remove = {
        },
    },
    variants = {
    Style = {
        _type = "select",
        _nullable = false,
        options = {
            style1 = "entity_set_style_1",
            style2 = "entity_set_style_2",
            style3 = "entity_set_style_3",
            style4 = "entity_set_style_4",
            style5 = "entity_set_style_5",
        },
    },
},
    defaults = {
    Style = "style5",
},
}