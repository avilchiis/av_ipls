return {
    id = "nightclub_elysian",
    label = "Nightclub Elysian Island",
    category = "After Hours",
    coords = { x = 192, y = -3168, z = 6 },
    ipls = {
        load = { "ba_barriers_case7" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case7_forsale",
                dixon = "ba_case7_dixon",
                madonna = "ba_case7_madonna",
                solomun = "ba_case7_solomun",
                taleOfUs = "ba_case7_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
