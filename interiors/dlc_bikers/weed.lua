-- Bikers / Weed
-- Location: Weed farm  (1051.491, -3196.536, -39.1484)

return {
    id = "weed",
    label = "Weed",
    category = "Bikers",
    coords = { x = 1051.491, y = -3196.536, z = -39.1484 },
    interior_id = 247297,
    ipls = {
        load = {
            "bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo",
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "weed_standard_equip",
                upgrade = "weed_upgrade_equip",
            },
        },
        Security = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "weed_low_security",
                upgrade = "weed_security_upgrade",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                production = "weed_production",
                fans = "weed_set_up",
                drying = "weed_drying",
                chairs = "weed_chairs",
            },
        },
    
        Plant1Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growtha_stage1",
                medium = "weed_growtha_stage2",
                full = "weed_growtha_stage3",
            },
        },
        Plant1Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growtha_stage23_standard",
                upgrade = "light_growtha_stage23_upgrade",
            },
        },
        Plant2Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthb_stage1",
                medium = "weed_growthb_stage2",
                full = "weed_growthb_stage3",
            },
        },
        Plant2Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthb_stage23_standard",
                upgrade = "light_growthb_stage23_upgrade",
            },
        },
        Plant3Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthc_stage1",
                medium = "weed_growthc_stage2",
                full = "weed_growthc_stage3",
            },
        },
        Plant3Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthc_stage23_standard",
                upgrade = "light_growthc_stage23_upgrade",
            },
        },
        Plant4Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthd_stage1",
                medium = "weed_growthd_stage2",
                full = "weed_growthd_stage3",
            },
        },
        Plant4Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthd_stage23_standard",
                upgrade = "light_growthd_stage23_upgrade",
            },
        },
        Plant5Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthe_stage1",
                medium = "weed_growthe_stage2",
                full = "weed_growthe_stage3",
            },
        },
        Plant5Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthe_stage23_standard",
                upgrade = "light_growthe_stage23_upgrade",
            },
        },
        Plant6Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthf_stage1",
                medium = "weed_growthf_stage2",
                full = "weed_growthf_stage3",
            },
        },
        Plant6Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthf_stage23_standard",
                upgrade = "light_growthf_stage23_upgrade",
            },
        },
        Plant7Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthg_stage1",
                medium = "weed_growthg_stage2",
                full = "weed_growthg_stage3",
            },
        },
        Plant7Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthg_stage23_standard",
                upgrade = "light_growthg_stage23_upgrade",
            },
        },
        Plant8Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthh_stage1",
                medium = "weed_growthh_stage2",
                full = "weed_growthh_stage3",
            },
        },
        Plant8Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthh_stage23_standard",
                upgrade = "light_growthh_stage23_upgrade",
            },
        },
        Plant9Stage = {
            _type = "select",
            _nullable = false,
            options = {
                small = "weed_growthi_stage1",
                medium = "weed_growthi_stage2",
                full = "weed_growthi_stage3",
            },
        },
        Plant9Light = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "light_growthi_stage23_standard",
                upgrade = "light_growthi_stage23_upgrade",
            },
        },
},
    defaults = {
        Style = "upgrade",
        Security = "basic",
    
        Plant1Stage = "small",
        Plant1Light = "basic",
        Plant2Stage = "small",
        Plant2Light = "basic",
        Plant3Stage = "small",
        Plant3Light = "basic",
        Plant4Stage = "small",
        Plant4Light = "basic",
        Plant5Stage = "small",
        Plant5Light = "basic",
        Plant6Stage = "small",
        Plant6Light = "basic",
        Plant7Stage = "small",
        Plant7Light = "basic",
        Plant8Stage = "small",
        Plant8Light = "basic",
        Plant9Stage = "small",
        Plant9Light = "basic",
},
}