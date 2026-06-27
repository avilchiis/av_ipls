-- Los Santos Tuners / Garage
-- -1350.0, 160.0, -100.0
return {
    id = "tuner_garage",
    label = "Garage",
    category = "Los Santos Tuners",
    min_build = 2372,
    coords = { x = -1350.0, y = 160.0, z = -100.0 },
    interior_id = 285953,
    ipls = {
        load = {
            "tr_tuner_shop_burton",
            "tr_tuner_shop_mesa",
            "tr_tuner_shop_mission",
            "tr_tuner_shop_rancho",
            "tr_tuner_shop_strawberry",
        },
        remove = {
        },
    },
    variants = {
    Bedroom = {
        _type = "select",
        _nullable = false,
        options = {
            occupied = "entity_set_bedroom",
            empty = "entity_set_bedroom_empty",
        },
    },
    Style = {
        _type = "select",
        _nullable = false,
        options = {
            style1 = "entity_set_style_1",
            style2 = "entity_set_style_2",
            style3 = "entity_set_style_3",
            style4 = "entity_set_style_4",
            style5 = "entity_set_style_5",
            style6 = "entity_set_style_6",
            style7 = "entity_set_style_7",
            style8 = "entity_set_style_8",
            style9 = "entity_set_style_9",
        },
    },
    Bombs = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_bombs", off = "" },
    },
    BoxClutter = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_box_clutter", off = "" },
    },
    Cabinets = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_cabinets", off = "" },
    },
    CarLiftCutscene = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_car_lift_cutscene", off = "" },
    },
    CarLiftDefault = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_car_lift_default", off = "" },
    },
    CarLiftPurchase = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_car_lift_purchase", off = "" },
    },
    Chalkboard = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_chalkboard", off = "" },
    },
    Container = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_container", off = "" },
    },
    CutSeats = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_cut_seats", off = "" },
    },
    DefTable = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_def_table", off = "" },
    },
    Drive = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_drive", off = "" },
    },
    Ecu = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_ecu", off = "" },
    },
    IAA = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_IAA", off = "" },
    },
    Jammers = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_jammers", off = "" },
    },
    Laptop = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_laptop", off = "" },
    },
    Lightbox = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_lightbox", off = "" },
    },
    MethLab = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_methLab", off = "" },
    },
    Plate = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_plate", off = "" },
    },
    Scope = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_scope", off = "" },
    },
    Table = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_table", off = "" },
    },
    Thermal = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_thermal", off = "" },
    },
    Tints = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_tints", off = "" },
    },
    Train = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_train", off = "" },
    },
    Virus = {
        _type = "toggle",
        _nullable = false,
        options = { on = "entity_set_virus", off = "" },
    },
},
    defaults = {
    Bedroom = "occupied",
    Style = "style9",
    Bombs = "on",
    CarLiftCutscene = "on",
    CarLiftDefault = "on",
    CarLiftPurchase = "on",
    Drive = "on",
    Ecu = "on",
    IAA = "on",
    Jammers = "on",
    Laptop = "on",
    Lightbox = "on",
    Plate = "on",
    Scope = "on",
    Thermal = "on",
    Tints = "on",
    Train = "on",
    Virus = "on",
},
}