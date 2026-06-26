-- Finance & Felony / Office3
-- Location: Office 3  (-1579.756, -565.0661, 108.523)

return {
    id = "office3",
    label = "Office3",
    category = "Finance & Felony",
    coords = { x = -1579.756, y = -565.0661, z = 108.523 },
    interior_id = {
        Style = 240897,
        classical = 241153,
        vintage = 241409,
        contrast = 241665,
        rich = 241921,
        cool = 242177,
        ice = 242433,
        conservative = 242689,
        polished = 242945,
    },
    ipls = {
        load = {
            "ex_sm_13_office_01a",
            "ex_sm_13_office_01b",
            "ex_sm_13_office_01c",
            "ex_sm_13_office_02a",
            "ex_sm_13_office_02b",
            "ex_sm_13_office_02c",
            "ex_sm_13_office_03a",
            "ex_sm_13_office_03b",
            "ex_sm_13_office_03c",
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