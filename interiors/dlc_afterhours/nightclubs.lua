-- After Hours / Nightclubs

return {
    id = "nightclubs",
    label = "Nightclubs",
    category = "After Hours",
    coords = { x = -1604.664, y = -3012.583, z = -78.000 },
    interior_id = 271617,
    ipls = {
        load = {
            "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_",
        },
        remove = {
        },
    },
    variants = {
        Interior = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "Int01_ba_equipment_setup",
                number1 = "Int01_ba_trophy01",
                battler = "Int01_ba_trophy02",
                dancer = "Int01_ba_trophy03",
            },
        },
        Name = {
            _type = "select",
            _nullable = false,
            options = {
                galaxy = "Int01_ba_clubname_01",
                studio = "Int01_ba_clubname_02",
                omega = "Int01_ba_clubname_03",
                technologie = "Int01_ba_clubname_04",
                gefangnis = "Int01_ba_clubname_05",
                maisonette = "Int01_ba_clubname_06",
                tony = "Int01_ba_clubname_07",
                palace = "Int01_ba_clubname_08",
                paradise = "Int01_ba_clubname_09",
            },
        },
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                trad = "Int01_ba_Style01",
                edgy = "Int01_ba_Style02",
                glam = "Int01_ba_Style03",
            },
        },
        Podium = {
            _type = "select",
            _nullable = false,
            options = {
                trad = "Int01_ba_style01_podium",
                edgy = "Int01_ba_style02_podium",
                glam = "Int01_ba_style03_podium",
            },
        },
        Turntables = {
            _type = "select",
            _nullable = false,
            options = {
                style01 = "Int01_ba_dj01",
                style02 = "Int01_ba_dj02",
                style03 = "Int01_ba_dj03",
                style04 = "Int01_ba_dj04",
            },
        },
        Droplets = {
            _type = "select",
            _nullable = false,
            options = {
                yellow = "DJ_01_Lights_01",
                green = "DJ_02_Lights_01",
                white = "DJ_03_Lights_01",
                purple = "DJ_04_Lights_01",
            },
        },
        Neons = {
            _type = "select",
            _nullable = false,
            options = {
                yellow = "DJ_01_Lights_02",
                white = "DJ_02_Lights_02",
                purple = "DJ_03_Lights_02",
                cyan = "DJ_04_Lights_02",
            },
        },
        Bands = {
            _type = "select",
            _nullable = false,
            options = {
                yellow = "DJ_01_Lights_03",
                green = "DJ_02_Lights_03",
                white = "DJ_03_Lights_03",
                cyan = "DJ_04_Lights_03",
            },
        },
        Lasers = {
            _type = "select",
            _nullable = false,
            options = {
                yellow = "DJ_01_Lights_04",
                green = "DJ_02_Lights_04",
                white = "DJ_03_Lights_04",
                purple = "DJ_04_Lights_04",
            },
        },
        Trophy = {
            _type = "select",
            _nullable = false,
            options = {
                number1 = "Int01_ba_trophy01",
                battler = "Int01_ba_trophy02",
                dancer = "Int01_ba_trophy03",
            },
        },
        Posters = {
            _type = "select",
            _nullable = false,
            options = {
                forSale = "ba_caseX_forsale",
                dixon = "ba_caseX_dixon",
                madonna = "ba_caseX_madonna",
                solomun = "ba_caseX_solomun",
                taleOfUs = "ba_caseX_taleofus",
            },
        },
    
        Speakers = {
            _type = "stages",
            _nullable = false,
            options = {
                basic = "Int01_ba_equipment_setup",
                upgrade = { "Int01_ba_equipment_setup", "Int01_ba_equipment_upgrade" },
            },
        },
        Security = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "Int01_ba_security_upgrade",
                off = "",
            },
        },
},
    defaults = {
        Name = "galaxy",
        Style = "edgy",
        Podium = "edgy",
        Turntables = "style01",
        Bands = "cyan",
    
        Speakers = "basic",
},
}