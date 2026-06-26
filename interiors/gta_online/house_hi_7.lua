-- GTA Online / House Hi 7

return {
    id = "house_hi_7",
    label = "House Hi 7",
    category = "GTA Online",
    coords = { x = 120.5, y = 549.952, z = 184.097 },
    interior_id = 206593,
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