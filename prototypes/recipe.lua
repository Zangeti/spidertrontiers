local spider_tron_mk3 = {
    type = "recipe",
    name = "spidertron_mk3",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"exoskeleton-equipment", 12},
            {"fusion-reactor-equipment", 6},
            {"rocket-launcher", 12},
            {"rocket-control-unit", 48},
            {"low-density-structure", 450},
            {"radar", 6},
            {"effectivity-module-3", 6},
            {"raw-fish", 3},
            {"spidertron_mk2", 1},
        },
        result = "spidertron_mk3"
    },
}

local spider_tron_mk2 = {
    type = "recipe",
    name = "spidertron_mk2",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"exoskeleton-equipment", 8},
            {"fusion-reactor-equipment", 4},
            {"rocket-launcher", 8},
            {"rocket-control-unit", 32},
            {"low-density-structure", 300},
            {"radar", 4},
            {"effectivity-module-3", 4},
            {"raw-fish", 2},
            {"spidertron", 1},
        },
        result = "spidertron_mk2"
    },
}

data:extend{
    spider_tron_mk3,
    spider_tron_mk2,
}