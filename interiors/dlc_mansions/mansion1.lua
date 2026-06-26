-- The Last Dose / Mansion1
-- Location: The Vinewood Residence  (543.852, 712.754, 201.0)

return {
    id = "mansion1",
    label = "Mansion1",
    category = "The Last Dose",
    min_build = 3717,
    coords = { x = 543.852, y = 712.754, z = 201.0 },
    interior_id = 304385,
    ipls = {
        load = {
            "apa_ch2_04_mansion_firepit",
            "apa_ch2_04_mansion_furniture",
            "apa_ch2_04_mansion_private",
            "apa_ch2_04_mansion_railings_p",
            "apa_ch2_04_mansion_shared",
            "hei_ch1_roads_mansion",
            "m25_2_ch2_04_mansion_interior_a",
            "m25_2_ch2_04_mansion_interior_b",
            "m25_2_ch2_04_mansion_interior_c",
            "m25_2_east_dog_house",
            "m25_2_east_mansion_gym",
            "m25_2_mansion_props",
        },
        remove = {
        },
    },
    variants = {
        Wallpaper = {
            _type = "select",
            _nullable = false,
            options = {
                rustic = "set_wallpaper_rustic",
                deco = "set_wallpaper_deco",
                coastal = "set_wallpaper_coastal",
                subtle = "set_wallpaper_subtle",
                safari = "set_wallpaper_safari",
                popart = "set_wallpaper_popart",
            },
        },
        Decorations = {
            _type = "select",
            _nullable = false,
            options = {
                xmas = "set_xmas",
                halloween = "set_halloween",
                lunar = "set_lunar",
                birthday = "set_birthday",
            },
        },
        Assistant = {
            _type = "select",
            _nullable = false,
            options = {
                og = "set_ai_tablets_01",
                haviland = "set_ai_tablets_02",
                angel = "set_ai_tablets_03",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                cat = "set_pet_cat",
                bowl = "set_pet_dog",
                poster = "set_michael_poster",
            },
        },
    
        Style = {
            _type = "stages",
            _nullable = false,
            options = {
                cali = { "set_style_cali", "set_elev_cali", "set_art_coastal", "set_trophy_planter", "set_shelving_planter" },
                loft = { "set_style_loft", "set_elev_loft", "set_art_loft", "set_loft_trophy_planter", "set_loft_shelving_planter" },
                holly = { "set_style_holly", "set_elev_holly", "set_art_regency", "set_reg_shelving_planter", "set_reg_trophy_planter" },
            },
        },
        Tint = {
            _type = "color",
            _nullable = false,
            entity_set = "set_style_cali_tint",
            options = {
                cream = 0,
                mint = 1,
                lavender = 2,
                salmon = 3,
            },
        },
},
    defaults = {
        Wallpaper = "deco",
        Assistant = "angel",
    
        Style = "cali",
        Tint = "cream",
},
}