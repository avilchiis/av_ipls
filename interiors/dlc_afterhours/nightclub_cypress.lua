return {
    id = "nightclub_cypress",
    label = "Nightclub Cypress Flats",
    category = "After Hours",
    coords = { x = 868, y = -2098, z = 31 },
    ipls = {
        load = { "ba_barriers_case4" },
        remove = {},
    },
    variants = {
        Poster = {
            _type = "ipl_select",
            options = {
                forsale = "ba_case4_forsale",
                dixon = "ba_case4_dixon",
                madonna = "ba_case4_madonna",
                solomun = "ba_case4_solomun",
                taleOfUs = "ba_case4_taleofus",
            },
        },
    },
    defaults = {
        Poster = "dixon",
    },
}
