-- Finance & Felony / Office4
-- Location: Office 4  (-1392.667, -480.4736, 72.0422)

return {
    id = "office4",
    label = "Office4",
    category = "Finance & Felony",
    coords = { x = -1392.667, y = -480.4736, z = 72.0422 },
    interior_id = {
        Style = 243201,
        classical = 243457,
        vintage = 243713,
        contrast = 243969,
        rich = 244225,
        cool = 244481,
        ice = 244737,
        conservative = 244993,
        polished = 245249,
    },
    ipls = {
        load = {
            "ex_sm_15_office_01a",
            "ex_sm_15_office_01b",
            "ex_sm_15_office_01c",
            "ex_sm_15_office_02a",
            "ex_sm_15_office_02b",
            "ex_sm_15_office_02c",
            "ex_sm_15_office_03a",
            "ex_sm_15_office_03b",
            "ex_sm_15_office_03c",
        },
        remove = {
        },
    },
    variants = {
        Chairs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "office_chairs",
                off = "",
            },
        },
        Booze = {
            _type = "toggle",
            _nullable = false,
            options = {
                on = "office_booze",
                off = "",
            },
        },
},
    defaults = {
        Chairs = "on",
        Booze = "on",
},
}