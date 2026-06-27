-- Finance & Felony / Office3

return {
    id = "office3",
    label = "Office3",
    category = "Finance & Felony",
    coords = { x = -1576.63, y = -565.22, z = 109.0 },
    interior_id = {
        warm = 240897,
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
        load = {},   -- IPLs are managed by the Style (ipl_select) variant
        remove = {},
    },
    variants = {
        -- Each style loads its own IPL + uses its own interior_id
        Style = {
            _type = "ipl_select",
            _nullable = false,
            options = {
                warm = "ex_sm_13_office_01a",
                classical = "ex_sm_13_office_01b",
                vintage = "ex_sm_13_office_01c",
                contrast = "ex_sm_13_office_02a",
                rich = "ex_sm_13_office_02b",
                cool = "ex_sm_13_office_02c",
                ice = "ex_sm_13_office_03a",
                conservative = "ex_sm_13_office_03b",
                polished = "ex_sm_13_office_03c",
            },
        },
        Chairs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "office_chairs",
                off = "",
            },
        },
        Booze = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "office_booze",
                off = "",
            },
        },
        BoozeCigs = {
            _type = "toggle",
            _nullable = false,
            options = {
                on  = "office_booze_cigs",
                off = "",
            },
        },
    },
    defaults = {
        Style   = "warm",
        Chairs  = "on",
        Booze   = "on",
        BoozeCigs = "off",
    },
}
