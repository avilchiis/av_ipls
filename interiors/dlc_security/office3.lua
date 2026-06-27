-- The Contract / Office3
-- -1004.23035, -761.2084, 66.990
return {
    id = "security_office3",
    label = "Office3",
    category = "The Contract",
    min_build = 2545,
    coords = { x = -1004.23035, y = -761.2084, z = 66.990 },
    interior_id = 288001,
    ipls = {
        load = {
            "sf_fixeroffice_kt1_05",
        },
        remove = {},
    },
    variants = {
    Armoury = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Armoury", off = "" },
    },
    StandardOffice = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Standard_Office", off = "" },
    },
    Blocker = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Blocker", off = "" },
    },
    Wallpaper = {
        _type = "select_nullable",
        _nullable = true,
        options = {
            wp01 = "Entity_Set_Wpaper_1",
            wp02 = "Entity_Set_Wpaper_2",
            wp03 = "Entity_Set_Wpaper_3",
            wp04 = "Entity_Set_Wpaper_4",
            wp05 = "Entity_Set_Wpaper_5",
            wp06 = "Entity_Set_Wpaper_6",
            wp07 = "Entity_Set_Wpaper_7",
            wp08 = "Entity_Set_Wpaper_8",
            wp09 = "Entity_Set_Wpaper_9",
        },
    },
    Moving = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Moving", off = "" },
    },
    TintAG = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Tint_AG", off = "" },
    },
    SpareSeats = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Spare_Seats", off = "" },
    },
    PlayerSeats = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Player_Seats", off = "" },
    },
    PlayerDesk = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_Player_Desk", off = "" },
    },
    MGolfIntro = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Golf_Intro", off = "" },
    },
    MSetup = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Setup", off = "" },
    },
    MNightclub = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Nightclub", off = "" },
    },
    MYacht = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Yacht", off = "" },
    },
    MPromoter = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Promoter", off = "" },
    },
    MLimoPhoto = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Limo_Photo", off = "" },
    },
    MLimoWallet = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Limo_Wallet", off = "" },
    },
    MTheWay = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_The_Way", off = "" },
    },
    MBillionaire = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Billionaire", off = "" },
    },
    MFamilies = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Families", off = "" },
    },
    MBallas = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Ballas", off = "" },
    },
    MHood = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Hood", off = "" },
    },
    MFireBooth = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Fire_Booth", off = "" },
    },
    M50 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_50", off = "" },
    },
    MTaxi = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Taxi", off = "" },
    },
    MGoneGolfing = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Gone_Golfing", off = "" },
    },
    MMotel = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Motel", off = "" },
    },
    MConstruction = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Construction", off = "" },
    },
    MHitList = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Hit_List", off = "" },
    },
    MTuner = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Tuner", off = "" },
    },
    MAttack = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Attack", off = "" },
    },
    MVehicles = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Vehicles", off = "" },
    },
    MTrip01 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Trip_01", off = "" },
    },
    MTrip02 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Trip_02", off = "" },
    },
    MTrip03 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_Set_M_Trip_03", off = "" },
    },
    Disc01 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_set_disc_01", off = "" },
    },
    Disc02 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_set_disc_02", off = "" },
    },
    Disc03 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_set_disc_03", off = "" },
    },
    Disc04 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_set_disc_04", off = "" },
    },
    Disc05 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_set_disc_05", off = "" },
    },
    Disc06 = {
        _type = "toggle",
        _nullable = false,
        options = { on = "Entity_set_disc_06", off = "" },
    },
    Art = {
        _type = "select_nullable",
        _nullable = true,
        options = {
            art1 = "Entity_Set_Art_1",
            art2 = "Entity_Set_Art_2",
            art3 = "Entity_Set_Art_3",
        },
    },
    },
    defaults = {},
    cull_models = {
        "hei_kt1_05_01",
        "kt1_05_glue_b",
        "kt1_05_kt_emissive_kt1_05",
    },
    cull_coords = nil,
}
