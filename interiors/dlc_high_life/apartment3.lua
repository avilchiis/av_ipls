-- The High Life / Apartment3
-- Location: Apartment 3  (-609.5669, 51.2821, 96.6002)

return {
    id = "highlife_apartment3",
    label = "Apartment3",
    category = "The High Life",
    coords = { x = -609.5669, y = 51.2821, z = 96.6002 },
    interior_id = 146689,
    ipls = {
        load = {
            "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo__2",
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