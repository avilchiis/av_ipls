return {
    id = "meth",
    label = "Meth",
    category = "Bikers",
    coords = { x = 1009.5, y = -3196.6, z = -38.9968 },
    interior_id = 247041,
    ipls = {
        load = { "bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo" },
        remove = {},
    },
    variants = {
        Style = {
            _type = "stages",
            _nullable = false,
            options = {
                none = "",
                empty = "meth_lab_empty",
                basic = { "meth_lab_basic", "meth_lab_setup" },
                upgrade = { "meth_lab_upgrade", "meth_lab_setup" },
            },
        },
        Security = {
            _type = "select_nullable",
            _nullable = true,
            options = { none = "", upgrade = "meth_lab_security_high" },
        },
        Production = { _type = "toggle", options = { on = "meth_lab_production", off = "" } },
    },
    defaults = {
        Style = "empty",
        Security = "upgrade",
        Production = "on",
    },
}
