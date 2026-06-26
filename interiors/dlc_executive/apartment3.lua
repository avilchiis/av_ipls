-- Executives & Other Criminals / Apartment3

return {
    id = "executive_apartment3",
    label = "Apartment3",
    category = "Executives & Other Criminals",
    coords = { x = -787.7805, y = 334.9232, z = 186.1134 },
    interior_id = {
        moody = 228609,
        vibrant = 229377,
        sharp = 230145,
        monochrome = 230913,
        seductive = 231681,
        regal = 232449,
        aqua = 233217,
    },
    ipls = {
        load = {
            "apa_v_mp_h_01_c",
            "apa_v_mp_h_02_c",
            "apa_v_mp_h_03_c",
            "apa_v_mp_h_04_c",
            "apa_v_mp_h_05_c",
            "apa_v_mp_h_06_c",
            "apa_v_mp_h_07_c",
            "apa_v_mp_h_08_c",
        },
        remove = {
        },
    },
    variants = {
        Smoke = {
            _type = "stages",
            _nullable = false,
            options = {
                stage1 = "Apart_Hi_Smokes_A",
                stage2 = "Apart_Hi_Smokes_B",
                stage3 = "Apart_Hi_Smokes_C",
            },
        },
    
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
},
    defaults = {
        Strip = "A",
        Booze = "A",
},
}