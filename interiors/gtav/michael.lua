return {
    id = "michael",
    label = "Michael",
    category = "GTA V Base Game",
    coords = { x = -812.45, y = 175.15, z = 72.69 },
    interior_id = 166657,
    ipls = { load = {}, remove = {} },
    variants = {
        Bed = {
            _type = "select",
            _nullable = false,
            options = { tidy = "V_Michael_bed_tidy", messy = "V_Michael_bed_Messy" },
        },
        Garage = {
            _type = "select",
            _nullable = false,
            options = { scuba = "V_Michael_Scuba" },
        },
        MoviePoster = { _type = "toggle", options = { on = "Michael_premier", off = "" } },
        FameShame = { _type = "toggle", options = { on = "V_Michael_FameShame", off = "" } },
        PlaneTicket = { _type = "toggle", options = { on = "V_Michael_plane_ticket", off = "" } },
        SpyGlasses = { _type = "toggle", options = { on = "V_Michael_JewelHeist", off = "" } },
        Bugershot = { _type = "toggle", options = { on = "burgershot_yoga", off = "" } },
    },
    defaults = {
        Bed = "tidy",
        Garage = "scuba",
    },
}
