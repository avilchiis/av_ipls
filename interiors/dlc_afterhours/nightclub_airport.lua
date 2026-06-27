return {
    id = "nightclub_airport",
    label = "Nightclub LSIA",
    category = "After Hours",
    coords = { x = -680, y = -2461, z = 14 },
    ipls = {
        load = { "ba_barriers_case6" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case6_forsale",
                dixon = "ba_case6_dixon",
                madonna = "ba_case6_madonna",
                solomun = "ba_case6_solomun",
                taleOfUs = "ba_case6_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
