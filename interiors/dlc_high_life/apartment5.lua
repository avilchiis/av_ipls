-- The High Life / Apartment5
-- Location: Apartment 5  (-22.6135, -590.1432, 78.4309)

return {
    id = "apartment5",
    label = "Apartment5",
    category = "The High Life",
    coords = { x = -22.6135, y = -590.1432, z = 78.4309 },
    interior_id = 147201,
    ipls = {
        load = {
            "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__4",
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