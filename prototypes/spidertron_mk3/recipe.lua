local spider_tron_mk3 = {
    type = "recipe",
    name = "spidertron_mk3",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"exoskeleton-equipment", 12},
            {"fusion-reactor-equipment", 8},
            {"satellite", 1},
            {"rocket-control-unit", 48},
            {"low-density-structure", 450},
            {"radar", 6},
            {"raw-fish", 2},
            {"spidertron_mk2", 1},
        },
        result = "spidertron_mk3"
    },
}

data:extend{
    spider_tron_mk3,
}