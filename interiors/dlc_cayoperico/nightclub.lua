-- Cayo Perico / Nightclub
-- Location: The Music Locker  (1550.0, 250.0, -50.0)

return {
    id = "nightclub",
    label = "Nightclub",
    category = "Cayo Perico",
    min_build = 2189,
    coords = { x = 1550.0, y = 250.0, z = -50.0 },
    interior_id = 281089,
    ipls = {
        load = {
        },
        remove = {
        },
    },
    variants = {
        Posters = {
            _type = "select",
            _nullable = false,
            options = {
                palmstraxx = "h4_clubposter_palmstraxx",
                moodymann = "h4_clubposter_moodymann",
                keinemusik = "h4_clubposter_keinemusik",
            },
        },
        Turntables = {
            _type = "select",
            _nullable = false,
            options = {
                style01 = "int01_ba_dj01",
                style02 = "int01_ba_dj02",
                style03 = "int01_ba_dj03",
                style04 = "int01_ba_dj04",
                style05 = "int01_ba_dj_palms_trax",
                style06 = "int01_ba_dj_keinemusik",
                style07 = "int01_ba_dj_moodyman",
            },
        },
        Screen = {
            _type = "select",
            _nullable = false,
            options = {
                front = "int01_ba_lights_screen",
                back = "int01_ba_screen",
            },
        },
        Droplets = {
            _type = "select",
            _nullable = false,
            options = {
                style01 = "dj_01_lights_01",
                style02 = "dj_02_lights_01",
                style03 = "dj_03_lights_01",
                style04 = "dj_04_lights_01",
            },
        },
        Neons = {
            _type = "select",
            _nullable = false,
            options = {
                style01 = "dj_01_lights_02",
                style02 = "dj_02_lights_02",
                style03 = "dj_03_lights_02",
                style04 = "dj_04_lights_02",
            },
        },
        Bands = {
            _type = "select",
            _nullable = false,
            options = {
                style01 = "dj_01_lights_03",
                style02 = "dj_02_lights_03",
                style03 = "dj_03_lights_03",
                style04 = "dj_04_lights_03",
            },
        },
        Lasers = {
            _type = "select",
            _nullable = false,
            options = {
                style01 = "dj_01_lights_04",
                style02 = "dj_02_lights_04",
                style03 = "dj_03_lights_04",
                style04 = "dj_04_lights_04",
            },
        },
        Security = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "int01_ba_security_upgrade",
                off = "",
            },
        },
        Speakers = {
            _type = "stages",
            _nullable = false,
            options = {
                basic = "int01_ba_equipment_setup",
                upgrade = { "int01_ba_equipment_setup", "int01_ba_equipment_upgrade" },
            },
        },
        Podium = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "int01_ba_style02_podium",
                off = "",
            },
        },
        Bar = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "int01_ba_bar_content",
                off = "",
            },
        },
    },
    defaults = {
        Turntables = "style01",
        Lasers = "style04",
        Security = "on",
        Speakers = "basic",
        Podium = "on",
        Bar = "on",
    },
}
