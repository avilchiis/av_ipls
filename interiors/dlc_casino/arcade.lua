-- The Diamond Casino / Arcade
-- Location: Arcade  (2732.0, -380.0, -50.0)

return {
    id = "arcade",
    label = "Arcade",
    category = "The Diamond Casino",
    min_build = 2060,
    coords = { x = 2732.0, y = -380.0, z = -50.0 },
    interior_id = 278273,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Ceiling = {
            _type = "select",
            _nullable = false,
            options = {
                flat = "entity_set_arcade_set_ceiling_flat",
                mirror = "entity_set_arcade_set_ceiling_mirror",
                beams = "entity_set_arcade_set_ceiling_beams",
            },
        },
        Mural = {
            _type = "select",
            _nullable = false,
            options = {
                edgy = "entity_set_mural_option_01",
                stripes = "entity_set_mural_option_02",
                kawaii = "entity_set_mural_option_03",
                thought = "entity_set_mural_option_04",
                forever = "entity_set_mural_option_05",
                wireframed = "entity_set_mural_option_06",
                colors = "entity_set_mural_option_07",
                realm = "entity_set_mural_option_08",
            },
        },
        Floor = {
            _type = "select",
            _nullable = false,
            options = {
                proper = "entity_set_floor_option_01",
                scale = "entity_set_floor_option_02",
                rainbow = "entity_set_floor_option_03",
                lab = "entity_set_floor_option_04",
                intergalactic = "entity_set_floor_option_05",
                stars = "entity_set_floor_option_06",
                playthings = "entity_set_floor_option_07",
                thunderclap = "entity_set_floor_option_08",
            },
        },
        Trophy = {
            _type = "select",
            _nullable = false,
            options = {
                claw = "entity_set_arcade_set_trophy_claw",
                love = "entity_set_arcade_set_trophy_love",
                teller = "entity_set_arcade_set_trophy_teller",
                gunner = "entity_set_arcade_set_trophy_gunner",
                king = "entity_set_arcade_set_trophy_king",
                racer = "entity_set_arcade_set_trophy_racer",
                patriot = "entity_set_arcade_set_trophy_patriot",
                monkey = "entity_set_arcade_set_trophy_monkey",
                brawler = "entity_set_arcade_set_trophy_brawler",
                retro = "entity_set_arcade_set_trophy_retro",
                cabs = "entity_set_arcade_set_trophy_cabs",
                strife = "entity_set_arcade_set_trophy_strife",
            },
        },
        Plushie = {
            _type = "select",
            _nullable = false,
            options = {
                purple = "entity_set_plushie_01",
                green = "entity_set_plushie_02",
                blue = "entity_set_plushie_03",
                orange = "entity_set_plushie_04",
                yellow = "entity_set_plushie_05",
                red = "entity_set_plushie_06",
                princess = "entity_set_plushie_07",
                wasabi = "entity_set_plushie_08",
                master = "entity_set_plushie_09",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                tv = "entity_set_big_screen",
                screens = "entity_set_screens",
            },
        },
    
        Style = {
            _type = "stages",
            _nullable = false,
            options = {
                derelict = { "entity_set_arcade_set_derelict", "entity_set_arcade_set_derelict_carpet", "entity_set_arcade_set_derelict_clean_up" },
                normal = "entity_set_constant_geometry",
            },
        },
},
    defaults = {
        Ceiling = "flat",
        Mural = "forever",
        Floor = "proper",
    
        Style = "normal",
},
}