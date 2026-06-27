return {
    id = "import_vehicle_warehouse",
    label = "Vehicle Warehouse",
    category = "Import/Export",
    coords = { x = 994.5925, y = -3002.594, z = -39.647 },
    interior_id = { upper = 252673, lower = 253185 },
    ipls = {
        load = {
            "imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_",
            "imp_impexp_interior_placement_interior_3_impexp_int_02_milo_",
        },
        remove = {},
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "basic_style_set",
                branded = "branded_style_set",
                urban = "urban_style_set",
            },
        },
        FloorHatch = { _type = "toggle", options = { on = "car_floor_hatch", off = "" } },
        DoorBlocker = { _type = "toggle", options = { on = "door_blocker", off = "" } },
    },
    defaults = {
        Style = "branded",
        FloorHatch = "on",
    },
}
