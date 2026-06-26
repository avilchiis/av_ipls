-- The Chop Shop / Office
-- Location: Bail office  (565.886, -2688.761, -50.0)

return {
    id = "bounties_office",
    label = "Office",
    category = "The Chop Shop",
    min_build = 3258,
    coords = { x = 565.886, y = -2688.761, z = -50.0 },
    interior_id = 295425,
    ipls = {
        load = {
            "m24_1_bailoffice_davis",
            "m24_1_bailoffice_delperro",
            "m24_1_bailoffice_missionrow",
            "m24_1_bailoffice_paletobay",
            "m24_1_bailoffice_vinewood",
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                vintage = "set_style_01",
                patterns = "set_style_02",
                teak = "set_style_03",
            },
        },
        Desk = {
            _type = "select",
            _nullable = false,
            options = {
                files = "set_no_staff",
                computers = "set_staff_upgrade",
            },
        },
        Gunsafe = {
            _type = "select",
            _nullable = false,
            options = {
                cabinet = "set_gunsafe_off",
                gunsafe = "set_gunsafe_on",
            },
        },
        Trophy = {
            _type = "select",
            _nullable = false,
            options = {
                plaque = "set_trophy_10x",
                badge = "set_trophy_24x",
                handcuffs = "set_trophy_100x",
            },
        },
    
        Plant = {
            _type = "select",
            _nullable = false,
            options = {
                plant = "set_new_plant",
            },
        },
},
    defaults = {
        Style = "teak",
        Desk = "files",
        Gunsafe = "cabinet",
    
        Plant = "plant",
},
}