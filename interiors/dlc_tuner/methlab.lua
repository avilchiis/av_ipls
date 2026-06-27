-- Los Santos Tuners / Meth Lab
-- -1380.0, 166.0, -60.0
return {
    id = "tuner_methlab",
    label = "Meth Lab",
    category = "Los Santos Tuners",
    min_build = 2372,
    coords = { x = -1380.0, y = 166.0, z = -60.0 },
    interior_id = 284673,
    ipls = {
        load = {},
        remove = {},
    },
    variants = {
        Walls = {
            _type = "toggle",
            _nullable = false,
            options = { on = "tintable_walls", off = "" },
        },
        WallsColor = {
            _type = "color",
            entity_set = "tintable_walls",
            options = {
                color0  = 0,
                color1  = 1,
                color2  = 2,
                color3  = 3,
                color4  = 4,
                color5  = 5,
                color6  = 6,
                color7  = 7,
                color8  = 8,
                color9  = 9,
                color10 = 10,
                color11 = 11,
                color12 = 12,
                color13 = 13,
            },
        },
    },
    defaults = {
        Walls      = "on",
        WallsColor = "color3",
    },
}
