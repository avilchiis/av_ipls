-- GTA V Base Game / Simeon
-- -66.9351, -1106.2301, 26.0168, 306.6670
return {
    id = "simeon",
    label = "Simeon",
    category = "GTA V Base Game",
    coords = { x = -66.9351, y = -1106.2301, z = 26.0168 },
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