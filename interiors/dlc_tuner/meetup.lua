-- Los Santos Tuners / Meetup
-- Location: Los Santos Car Meet  (-2004.1569, 1123.5770, -27.3638)

return {
    id = "meetup",
    label = "Meetup",
    category = "Los Santos Tuners",
    min_build = 2372,
    coords = { x = -2004.1569, y = 1123.5770, z = -27.3638 },
    interior_id = 285697,
    ipls = {
        load = {
            "tr_tuner_meetup",
            "tr_tuner_race_line",
        },
        remove = {
        },
    },
    variants = {
    MeetCrew = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_meet_crew", off = "" },
    },
    MeetLights = {
        _type = "select",
        _nullable = false,
        options = {
            normal = "entity_set_meet_lights",
            cheap = "entity_set_meet_lights_cheap",
        },
    },
    Player = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_player", off = "" },
    },
    TestCrew = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_test_crew", off = "" },
    },
    TestLights = {
        _type = "select",
        _nullable = false,
        options = {
            normal = "entity_set_test_lights",
            cheap = "entity_set_test_lights_cheap",
        },
    },
    TimeTrial = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_time_trial", off = "" },
    },
},
    defaults = {
    MeetCrew = "on",
    MeetLights = "normal",
    Player = "on",
    TestLights = "normal",
    TimeTrial = "on",
},
}