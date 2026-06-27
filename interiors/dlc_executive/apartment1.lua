-- Executives & Other Criminals / Apartment1

return {
    id = "executive_apartment1",
    label = "Apartment1",
    category = "Executives & Other Criminals",
    coords = { x = -787.7805, y = 334.9232, z = 215.8384 },
    interior_id = {
        modern = 227329,
        moody = 228097,
        vibrant = 228865,
        sharp = 229633,
        monochrome = 230401,
        seductive = 231169,
        regal = 231937,
        aqua = 232705,
    },
    ipls = {
        load = {},   -- IPLs are managed by the Style (ipl_select) variant
        remove = {},
    },
    variants = {
        -- Each style loads its own IPL + uses its own interior_id
        Style = {
            _type = "ipl_select",
            _nullable = false,
            options = {
                modern = "apa_v_mp_h_01_a",
                moody = "apa_v_mp_h_02_a",
                vibrant = "apa_v_mp_h_03_a",
                sharp = "apa_v_mp_h_04_a",
                monochrome = "apa_v_mp_h_05_a",
                seductive = "apa_v_mp_h_06_a",
                regal = "apa_v_mp_h_07_a",
                aqua = "apa_v_mp_h_08_a",
            },
        },
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
        Style = "modern",
        Strip = "A",
        Booze = "A",
    },
}
