-- GTA Online / House Mid 1

return {
    id = "house_mid_1",
    label = "House Mid 1",
    category = "GTA Online",
    coords = { x = 347.2686, y = -999.2955, z = -99.19622 },
    interior_id = 148225,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Smoke = {
            _type = "stages",
            _nullable = false,
            options = {
                stage1 = "Apart_Mid_Smoke_A",
                stage2 = "Apart_Mid_Smoke_B",
                stage3 = "Apart_Mid_Smoke_C",
            },
        },
    
        Strip = {
            _type = "select",
            _nullable = false,
            options = {
                A = "Apart_Mid_Strip_A",
                B = "Apart_Mid_Strip_B",
                C = "Apart_Mid_Strip_C",
            },
        },
        Booze = {
            _type = "select",
            _nullable = false,
            options = {
                A = "Apart_Mid_Booze_A",
                B = "Apart_Mid_Booze_B",
                C = "Apart_Mid_Booze_C",
            },
        },
},
    defaults = {
        Strip = "A",
        Booze = "A",
},
}