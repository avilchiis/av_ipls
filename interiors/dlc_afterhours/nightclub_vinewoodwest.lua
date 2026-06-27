return {
    id = "nightclub_vinewoodwest",
    label = "Nightclub Vinewood West",
    category = "After Hours",
    coords = { x = 9, y = 221, z = 109 },
    ipls = {
        load = { "ba_barriers_case3" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case3_forsale",
                dixon = "ba_case3_dixon",
                madonna = "ba_case3_madonna",
                solomun = "ba_case3_solomun",
                taleOfUs = "ba_case3_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
