-- Los Santos Drug Wars / Garage
-- Location: Eclipse Boulevard Garage  (519.2477, -2618.788, -50.0)

return {
    id = "drugwars_garage",
    label = "Garage",
    category = "Los Santos Drug Wars",
    min_build = 2802,
    coords = { x = 519.2477, y = -2618.788, z = -50.0 },
    interior_id = 290561,
    ipls = {
        load = {
            "xm3_garage_fix",
        },
        remove = {
        },
    },
    variants = {
        Numbering = {
            _type = "select_nullable",
            _nullable = true,
            options = {
                level1 = "entity_set_numbers_01",
                level2 = "entity_set_numbers_02",
                level3 = "entity_set_numbers_03",
                level4 = "entity_set_numbers_04",
                level5 = "entity_set_numbers_05",
            },
        },
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                immaculate = "entity_set_shell_01",
                industrial = "entity_set_shell_02",
                indulgent = "entity_set_shell_03",
            },
        },
    
        Tint = {
            _type = "color",
            _nullable = false,
            entity_set = "entity_set_tint_01",
            options = {
                white = 1,
                gray = 2,
                black = 3,
                purple = 4,
                orange = 5,
                yellow = 6,
                blue = 7,
                red = 8,
                green = 9,
                lightBlue = 10,
                lightRed = 11,
                lightGreen = 12,
            },
        },
},
    defaults = {
        Numbering = "level1",
        Style = "immaculate",
    
        Tint = "white",
},
}