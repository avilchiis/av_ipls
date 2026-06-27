return {
    id = "nightclub_mesa",
    label = "Nightclub Mesa",
    category = "After Hours",
    coords = { x = 760, y = -1337, z = 27 },
    ipls = {
        load = { "ba_barriers_case0" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case0_forsale",
                dixon = "ba_case0_dixon",
                madonna = "ba_case0_madonna",
                solomun = "ba_case0_solomun",
                taleOfUs = "ba_case0_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
