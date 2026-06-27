return {
    id = "nightclub_delperro",
    label = "Nightclub Del Perro",
    category = "After Hours",
    coords = { x = -1287, y = -647, z = 27 },
    ipls = {
        load = { "ba_barriers_case5" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case5_forsale",
                dixon = "ba_case5_dixon",
                madonna = "ba_case5_madonna",
                solomun = "ba_case5_solomun",
                taleOfUs = "ba_case5_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
