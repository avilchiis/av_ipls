-- The Chop Shop / Cartel Garage
-- Location: Cartel Garage  (1220.133, -2277.844, -50.0)

return {
    id = "cartel_garage",
    label = "Cartel Garage",
    category = "The Chop Shop",
    min_build = 3095,
    coords = { x = 1220.133, y = -2277.844, z = -50.0 },
    interior_id = 293633,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
    Entities = {
        _type = "toggle",
        _nullable = false,
        options = { on = "mp2023_02_dlc_int_6_cb", off = "" },
    },
},
    defaults = {
    Entities = "on",
},
}