-- GTA Online / House Hi 6

return {
    id = "house_hi_6",
    label = "House Hi 6",
    category = "GTA Online",
    coords = { x = -857.798, y = 682.563, z = 152.6529 },
    interior_id = 207361,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Strip = {
            _type = "select",
            _nullable = false,
            options = {
                A = "Apart_Hi_Strip_A",
                B = "Apart_Hi_Strip_B",
                C = "Apart_Hi_Strip_C",
            },
        },
        Booze = {
            _type = "select",
            _nullable = false,
            options = {
                A = "Apart_Hi_Booze_A",
                B = "Apart_Hi_Booze_B",
                C = "Apart_Hi_Booze_C",
            },
        },
        Smoke = {
            _type = "select",
            _nullable = false,
            options = {
                A = "Apart_Hi_Smokes_A",
                B = "Apart_Hi_Smokes_B",
                C = "Apart_Hi_Smokes_C",
            },
        },
},
    defaults = {
        Strip = "A",
        Booze = "A",
        Smoke = "A",
},
}