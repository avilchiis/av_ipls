-- GTA V Base Game / Michael

return {
    id = "michael",
    label = "Michael",
    category = "GTA V Base Game",
    coords = { x = -812.45, y = 175.15, z = 72.69 },
    interior_id = 166657,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Bed = {
            _type = "select",
            _nullable = false,
            options = {
                tidy = "V_Michael_bed_tidy",
                messy = "V_Michael_bed_Messy",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                moviePoster = "Michael_premier",
                fameShamePoste = "V_Michael_FameShame",
                planeTicket = "V_Michael_plane_ticket",
                spyGlasses = "V_Michael_JewelHeist",
                bugershot = "burgershot_yoga",
            },
        },
    
        Garage = {
            _type = "select",
            _nullable = false,
            options = {
                scuba = "V_Michael_Scuba",
            },
        },
},
    defaults = {
        Bed = "tidy",
    
        Garage = "scuba",
},
}