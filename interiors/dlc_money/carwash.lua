-- The Criminal Enterprises / Carwash
-- Location: Car wash  (26.074, -1398.979, -75.0)

return {
    id = "carwash",
    label = "Carwash",
    category = "The Criminal Enterprises",
    min_build = 3570,
    coords = { x = 26.074, y = -1398.979, z = -75.0 },
    interior_id = 298497,
    ipls = {
        load = {
            "m25_1_carwash",
        },
        remove = {
        },
    },
    variants = {
    Tint = {
        _type = "toggle",
        _nullable = false,
        options = { on = "set_carwash_tints", off = "" },
    },
},
    defaults = {
    Tint = "on",
},
}