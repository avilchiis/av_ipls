-- GTA V Base Game / Simeon

return {
    id = "simeon",
    label = "Simeon",
    category = "GTA V Base Game",
    coords = { x = 496.63, y = -1341.69, z = 29.33 },
    interior_id = 7170,
    ipls = {
        load = {
            "shr_int",
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                normal = "csr_beforeMission",
                noGlass = "csr_inMission",
                destroyed = "csr_afterMissionA",
                fixed = "csr_afterMissionB",
            },
        },
        Shutter = {
            _type = "toggle",
            _nullable = false,
            options = {
                opened = "shutter_open",
                closed = "shutter_closed",
            },
        },
    },
    defaults = {
        Style = "normal",
        Shutter = "opened",
    },
}