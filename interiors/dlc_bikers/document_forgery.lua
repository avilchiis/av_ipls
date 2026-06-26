-- Bikers / Document Forgery
-- Location: Document forgery  (1165.0, -3196.6, -39.0131)

return {
    id = "document_forgery",
    label = "Document Forgery",
    category = "Bikers",
    coords = { x = 1165.0, y = -3196.6, z = -39.0131 },
    interior_id = 246785,
    ipls = {
        load = {
            "bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo",
        },
        remove = {
        },
    },
    variants = {
        Style = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "interior_basic",
                upgrade = "interior_upgrade",
            },
        },
        Equipment = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "equipment_basic",
                upgrade = "equipment_upgrade",
            },
        },
        Security = {
            _type = "select",
            _nullable = false,
            options = {
                basic = "security_low",
                upgrade = "security_high",
            },
        },
        Details = {
            _type = "select",
            _nullable = false,
            options = {
                production = "production",
                furnitures = "set_up",
                clutter = "clutter",
            },
        },
    },
    defaults = {
        Style = "basic",
        Equipment = "basic",
        Security = "basic",
    },
}