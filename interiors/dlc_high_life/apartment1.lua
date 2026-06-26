-- The High Life / Apartment1
-- Location: Apartment 1  (-1462.281, -539.6276, 72.4443)

return {
    id = "highlife_apartment1",
    label = "Apartment1",
    category = "The High Life",
    coords = { x = -1462.281, y = -539.6276, z = 72.4443 },
    interior_id = 145921,
    ipls = {
        load = {
            "mpbusiness_int_placement_interior_v_mp_apt_h_01_milo_",
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