-- GTA Online / House Low 1

return {
    id = "house_low_1",
    label = "House Low 1",
    category = "GTA Online",
    coords = { x = 261.4586, y = -998.8196, z = -99.00863 },
    interior_id = 149761,
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
                stage1 = "Studio_Lo_Smoke_A",
                stage2 = "Studio_Lo_Smoke_B",
                stage3 = "Studio_Lo_Smoke_C",
            },
        },
    
        Strip = {
            _type = "select",
            _nullable = false,
            options = {
                A = "Studio_Lo_Strip_A",
                B = "Studio_Lo_Strip_B",
                C = "Studio_Lo_Strip_C",
            },
        },
        Booze = {
            _type = "select",
            _nullable = false,
            options = {
                A = "Studio_Lo_Booze_A",
                B = "Studio_Lo_Booze_B",
                C = "Studio_Lo_Booze_C",
            },
        },
},
    defaults = {
        Strip = "A",
        Booze = "A",
},
}