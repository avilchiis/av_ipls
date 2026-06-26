-- Import/Export / Vehicle Warehouse
-- Location: Upper  (994.5925, -3002.594, -39.647)

return {
    id = "import_vehicle_warehouse",
    label = "Vehicle Warehouse",
    category = "Import/Export",
    coords = { x = 994.5925, y = -3002.594, z = -39.647 },
    interior_id = 253185,
    ipls = {
        load = {
            "imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_",
            "imp_impexp_interior_placement_interior_3_impexp_int_02_milo_",
        },
        remove = {
        },
    },
    variants = {
        Upper = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "basic_style_set",
                branded = "branded_style_set",
                urban = "urban_style_set",
            },
        },
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "basic_style_set",
                branded = "branded_style_set",
                urban = "urban_style_set",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                floorHatch = "car_floor_hatch",
                doorBlocker = "door_blocker",
            },
        },
        Pumps = {
            _type = "select",
            _nullable = false,
            options = {
                pump1 = "pump_01",
                pump2 = "pump_02",
                pump3 = "pump_03",
                pump4 = "pump_04",
                pump5 = "pump_05",
                pump6 = "pump_06",
                pump7 = "pump_07",
                pump8 = "pump_08",
            },
        },
    
},
    defaults = {
        Style = "branded",
    
},
}