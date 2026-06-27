return {
    id = "trevors_trailer",
    label = "Trevors Trailer",
    category = "GTA V Base Game",
    coords = { x = 1975.71, y = 3819.36, z = 32.3 },
    interior_id = 2562,
    ipls = { load = {}, remove = {} },
    variants = {
        Interior = {
            _type = "select",
            _nullable = false,
            options = { tidy = "trevorstrailertidy", trash = "TrevorsTrailerTrash" },
        },
        CopHelmet = { _type = "toggle", options = { on = "V_26_Trevor_Helmet3", off = "" } },
        Briefcase = { _type = "toggle", options = { on = "V_24_Trevor_Briefcase3", off = "" } },
        MichaelStuff = { _type = "toggle", options = { on = "V_26_Michael_Stay3", off = "" } },
    },
    defaults = {
        Interior = "trash",
    },
}
