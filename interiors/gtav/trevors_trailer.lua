-- GTA V Base Game / Trevors Trailer

return {
    id = "trevors_trailer",
    label = "Trevors Trailer",
    category = "GTA V Base Game",
    coords = { x = 1975.71, y = 3819.36, z = 32.3 },
    interior_id = 2562,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Interior = {
            _type = "select",
            _nullable = false,
            options = {
                tidy = "trevorstrailertidy",
                trash = "TrevorsTrailerTrash",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                copHelmet = "V_26_Trevor_Helmet3",
                briefcase = "V_24_Trevor_Briefcase3",
                michaelStuff = "V_26_Michael_Stay3",
            },
        },
    },
    defaults = {
        Interior = "trash",
    },
}