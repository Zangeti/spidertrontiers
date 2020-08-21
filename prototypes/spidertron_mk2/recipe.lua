local spidertron_mk2 = {
    type = "recipe",
    name = "spidertron_mk2",
    normal = {
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"exoskeleton-equipment", 8},
            {"fusion-reactor-equipment", 4},
            {"rocket-control-unit", 32},
            {"low-density-structure", 300},
            {"radar", 4},
            {"effectivity-module-3", 4},
            {"electric-engine-unit", 24},
            {"raw-fish", 1},
            {"spidertron", 1},
        },
        result = "spidertron_mk2"
    },
}

data:extend{
    spidertron_mk2,
}