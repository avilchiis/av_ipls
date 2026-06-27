return {
    id = "nightclub_vinewood",
    label = "Nightclub Vinewood",
    category = "After Hours",
    coords = { x = 373, y = 254, z = 103 },
    ipls = {
        load = { "ba_barriers_case8" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case8_forsale",
                dixon = "ba_case8_dixon",
                madonna = "ba_case8_madonna",
                solomun = "ba_case8_solomun",
                taleOfUs = "ba_case8_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
