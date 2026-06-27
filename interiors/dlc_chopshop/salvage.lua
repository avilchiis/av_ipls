-- The Chop Shop / Salvage
-- Location: Salvage Yard  (1077.276, -2274.876, -50.0)

return {
    id = "salvage",
    label = "Salvage",
    category = "The Chop Shop",
    min_build = 3095,
    coords = { x = 1077.276, y = -2274.876, z = -50.0 },
    interior_id = 293377,
    ipls = {
        load = {
            "m23_2_cs1_05_reds",
            "m23_2_cs4_11_reds",
            "m23_2_id2_04_reds",
            "m23_2_sc1_03_reds",
            "m23_2_sp1_03_reds",
        },
        remove = {
        },
    },
    variants = {
    Style = {
        _type = "select",
        _nullable = false,
        options = {
            basic = "set_mechanic_basic",
            upgrade = "set_mechanic_upgrade",
        },
    },
        Lift1 = {
            _type = "select",
            _nullable = false,
            options = {
                down = "set_car_lift_01_down",
                up = "set_car_lift_01_up",
            },
        },
        Lift2 = {
            _type = "select",
            _nullable = false,
            options = {
                down = "set_car_lift_02_down",
                up = "set_car_lift_02_up",
            },
        },
    
        Tint = {
            _type = "color",
            _nullable = false,
            entity_set = "set_tint_b",
            options = {
                gray = 1,
                red = 2,
                blue = 3,
                orange = 4,
                yellow = 5,
                green = 6,
                pink = 7,
                teal = 8,
                darkGray = 9,
            },
        },
},
    defaults = {
        Style = "upgrade",
        Lift1 = "up",
        Lift2 = "up",
    
        Tint = "gray",
},
}