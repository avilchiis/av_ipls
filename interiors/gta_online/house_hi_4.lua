-- GTA Online / House Hi 4

return {
    id = "house_hi_4",
    label = "House Hi 4",
    category = "GTA Online",
    coords = { x = -676.127, y = 588.612, z = 145.1698 },
    interior_id = 208129,
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