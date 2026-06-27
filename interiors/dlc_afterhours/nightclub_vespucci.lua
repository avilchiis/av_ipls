return {
    id = "nightclub_vespucci",
    label = "Nightclub Vespucci",
    category = "After Hours",
    coords = { x = -1171, y = -1150, z = 6 },
    ipls = {
        load = { "ba_barriers_case9" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case9_forsale",
                dixon = "ba_case9_dixon",
                madonna = "ba_case9_madonna",
                solomun = "ba_case9_solomun",
                taleOfUs = "ba_case9_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
