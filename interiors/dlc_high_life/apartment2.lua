-- The High Life / Apartment2
-- Location: Apartment 2  (-914.9026, -374.8731, 112.6748)

return {
    id = "highlife_apartment2",
    label = "Apartment2",
    category = "The High Life",
    coords = { x = -914.9026, y = -374.8731, z = 112.6748 },
    interior_id = 146177,
    ipls = {
        load = {
            "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__1",
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