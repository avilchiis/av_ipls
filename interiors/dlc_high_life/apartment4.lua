-- The High Life / Apartment4
-- Location: Apartment 4  (-778.5061, 331.316, 210.3972)

return {
    id = "apartment4",
    label = "Apartment4",
    category = "The High Life",
    coords = { x = -778.5061, y = 331.316, z = 210.3972 },
    interior_id = 146945,
    ipls = {
        load = {
            "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__3",
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