-- GTA V Base Game / Stripclub

return {
    id = "stripclub",
    label = "Stripclub",
    category = "GTA V Base Game",
    coords = { x = 128.03, y = -1281.77, z = 29.27 },
    interior_id = 197121,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Mess = {
            _type = "select",
            _nullable = false,
            options = {
                mess = "V_19_Trevor_Mess",
            },
        },
},
    defaults = {
        Mess = "mess",
},
}