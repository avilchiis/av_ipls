return {
    id = "nightclub_strawberry",
    label = "Nightclub Strawberry",
    category = "After Hours",
    coords = { x = -118, y = -1260, z = 30 },
    ipls = {
        load = { "ba_barriers_case2" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case2_forsale",
                dixon = "ba_case2_dixon",
                madonna = "ba_case2_madonna",
                solomun = "ba_case2_solomun",
                taleOfUs = "ba_case2_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
