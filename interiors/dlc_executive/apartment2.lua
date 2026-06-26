-- Executives & Other Criminals / Apartment2

return {
    id = "executive_apartment2",
    label = "Apartment2",
    category = "Executives & Other Criminals",
    coords = { x = -773.2258, y = 322.8252, z = 194.8862 },
    interior_id = {
        moody = 228353,
        vibrant = 229121,
        sharp = 229889,
        monochrome = 230657,
        seductive = 231425,
        regal = 232193,
        aqua = 232961,
    },
    ipls = {
        load = {
            "apa_v_mp_h_01_b",
            "apa_v_mp_h_02_b",
            "apa_v_mp_h_03_b",
            "apa_v_mp_h_04_b",
            "apa_v_mp_h_05_b",
            "apa_v_mp_h_06_b",
            "apa_v_mp_h_07_b",
            "apa_v_mp_h_08_b",
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