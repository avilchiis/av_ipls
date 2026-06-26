-- The Diamond Casino / Penthouse

return {
    id = "penthouse",
    label = "Penthouse",
    category = "The Diamond Casino",
    min_build = 2060,
    coords = { x = 976.636, y = 70.295, z = 115.164 },
    interior_id = 274689,
    ipls = {
        load = {
            "vw_casino_penthouse",
        },
        remove = {
        },
    },
    variants = {
        Pattern = {
            _type = "select",
            _nullable = false,
            options = {
                pattern01 = "Set_Pent_Pattern_01",
                pattern02 = "Set_Pent_Pattern_02",
                pattern03 = "Set_Pent_Pattern_03",
                pattern04 = "Set_Pent_Pattern_04",
                pattern05 = "Set_Pent_Pattern_05",
                pattern06 = "Set_Pent_Pattern_06",
                pattern07 = "Set_Pent_Pattern_07",
                pattern08 = "Set_Pent_Pattern_08",
                pattern09 = "Set_Pent_Pattern_09",
            },
        },
        SpaBar = {
            _type = "toggle",
            _nullable = false,
            options = {
                open = "Set_Pent_Spa_Bar_Open",
                closed = "Set_Pent_Spa_Bar_Closed",
            },
        },
        MediaBar = {
            _type = "toggle",
            _nullable = false,
            options = {
                open = "Set_Pent_Media_Bar_Open",
                closed = "Set_Pent_Media_Bar_Closed",
            },
        },
        Dealer = {
            _type = "toggle",
            _nullable = false,
            options = {
                open = "Set_Pent_Dealer",
                closed = "Set_Pent_NoDealer",
            },
        },
        Arcade = {
            _type = "select",
            _nullable = false,
            options = {
                retro = "Set_Pent_Arcade_Retro",
                modern = "Set_Pent_Arcade_Modern",
            },
        },
        Clutter = {
            _type = "select",
            _nullable = false,
            options = {
                bar = "Set_Pent_Bar_Clutter",
                clutter01 = "Set_Pent_Clutter_01",
                clutter02 = "Set_Pent_Clutter_02",
                clutter03 = "Set_Pent_Clutter_03",
            },
        },
        BarLight = {
            _type = "select",
            _nullable = false,
            options = {
                light0 = "set_pent_bar_light_0",
                light1 = "set_pent_bar_light_01",
                light2 = "set_pent_bar_light_02",
            },
        },
        BarParty = {
            _type = "select",
            _nullable = false,
            options = {
                party0 = "set_pent_bar_party_0",
                party1 = "set_pent_bar_party_1",
                party2 = "set_pent_bar_party_2",
                partyafter = "set_pent_bar_party_after",
            },
        },
    
        WallsColor = {
            _type = "color",
            _nullable = false,
            entity_set = "Set_Pent_Tint_Shell",
            options = {
                default = 0,
                sharp = 1,
                vibrant = 2,
                timeless = 3,
            },
        },
        PatternColor = {
            _type = "color",
            _nullable = false,
            _target = "Pattern",
            options = {
                default = 0,
                sharp = 1,
                vibrant = 2,
                timeless = 3,
            },
        },
},
    defaults = {
        SpaBar = "open",
        MediaBar = "open",
        Dealer = "open",
    
        WallsColor = "default",
        PatternColor = "default",
},
}