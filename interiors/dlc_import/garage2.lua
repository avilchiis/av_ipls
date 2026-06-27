-- Import/Export / Garage2
-- -84.2193, -823.0851, 221.00
return {
    id = "garage2",
    label = "Garage2",
    category = "Import/Export",
    coords = { x = -84.2193, y = -823.0851, z = 221.0 },
    interior_id = {
        Garage1 = 254465,
        Garage2 = 254721,
        Garage3 = 254977,
        ModShop = 255233,
    },
    ipls = {
        load = {
            "imp_dt1_11_cargarage_a",
            "imp_dt1_11_cargarage_b",
            "imp_dt1_11_cargarage_c",
            "imp_dt1_11_modgarage",
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                concrete = "garage_decor_01",
                plain = "garage_decor_02",
                marble = "garage_decor_03",
                wooden = "garage_decor_04",
            },
        },
        Level1 = {
            _type = "select",
            _nullable = false,
            options = {
                style1 = "numbering_style01_n1",
                style2 = "numbering_style02_n1",
                style3 = "numbering_style03_n1",
                style4 = "numbering_style04_n1",
                style5 = "numbering_style05_n1",
                style6 = "numbering_style06_n1",
                style7 = "numbering_style07_n1",
                style8 = "numbering_style08_n1",
                style9 = "numbering_style09_n1",
            },
        },
        Level2 = {
            _type = "select",
            _nullable = false,
            options = {
                style1 = "numbering_style01_n2",
                style2 = "numbering_style02_n2",
                style3 = "numbering_style03_n2",
                style4 = "numbering_style04_n2",
                style5 = "numbering_style05_n2",
                style6 = "numbering_style06_n2",
                style7 = "numbering_style07_n2",
                style8 = "numbering_style08_n2",
                style9 = "numbering_style09_n2",
            },
        },
        Level3 = {
            _type = "select",
            _nullable = false,
            options = {
                style1 = "numbering_style01_n3",
                style2 = "numbering_style02_n3",
                style3 = "numbering_style03_n3",
                style4 = "numbering_style04_n3",
                style5 = "numbering_style05_n3",
                style6 = "numbering_style06_n3",
                style7 = "numbering_style07_n3",
                style8 = "numbering_style08_n3",
                style9 = "numbering_style09_n3",
            },
        },
        Lighting = {
            _type = "select",
            _nullable = false,
            options = {
                style1 = "lighting_option01",
                style2 = "lighting_option02",
                style3 = "lighting_option03",
                style4 = "lighting_option04",
                style5 = "lighting_option05",
                style6 = "lighting_option06",
                style7 = "lighting_option07",
                style8 = "lighting_option08",
                style9 = "lighting_option09",
            },
        },
    

        ModShopFloor = {
            _type = "select_nullable",
            _nullable = true,
            options = {
                default = "",
                city = "floor_vinyl_01",
                seabed = "floor_vinyl_02",
                aliens = "floor_vinyl_03",
                clouds = "floor_vinyl_04",
                money = "floor_vinyl_05",
                zebra = "floor_vinyl_06",
                blackWhite = "floor_vinyl_07",
                barcode = "floor_vinyl_08",
                paintbrushBW = "floor_vinyl_09",
                grid = "floor_vinyl_10",
                splashes = "floor_vinyl_11",
                squares = "floor_vinyl_12",
                mosaic = "floor_vinyl_13",
                paintbrushColor = "floor_vinyl_14",
                curvesColor = "floor_vinyl_15",
                marbleBrown = "floor_vinyl_16",
                marbleBlue = "floor_vinyl_17",
                marbleBW = "floor_vinyl_18",
                maze = "floor_vinyl_19",
            },
        },
},
    defaults = {

        ModShopFloor = "default",
},
}