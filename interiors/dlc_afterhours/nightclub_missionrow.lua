return {
    id = "nightclub_missionrow",
    label = "Nightclub Mission Row",
    category = "After Hours",
    coords = { x = 348, y = -979, z = 30 },
    ipls = {
        load = { "ba_barriers_case1" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case1_forsale",
                dixon = "ba_case1_dixon",
                madonna = "ba_case1_madonna",
                solomun = "ba_case1_solomun",
                taleOfUs = "ba_case1_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
