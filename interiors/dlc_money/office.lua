-- The Criminal Enterprises / Office
-- Location: Office  (-1160.493, -1538.932, -50.0)

return {
    id = "money_office",
    label = "Office",
    category = "The Criminal Enterprises",
    min_build = 3570,
    coords = { x = -1160.493, y = -1538.932, z = -50.0 },
    interior_id = 298753,
    ipls = {
        load = {
            "m25_1_helitours",
            "m25_1_smokeonthewater",
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "stages",
            _nullable = false,
            options = {
                heli = { "set_heli", "set_heli_tint" },
                smoke = { "set_smoke", "set_smoke_tint" },
            },
        },
},
    defaults = {
        Style = "heli",
},
}