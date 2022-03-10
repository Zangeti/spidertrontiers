local spidertron_mk2

if (settings.startup["stack-spidertron-recipes"].value == true) then
    spidertron_mk2 = {
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
else
    spidertron_mk2 = {
        type = "recipe",
        name = "spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"exoskeleton-equipment", 12},
                {"fusion-reactor-equipment", 4},
                {"rocket-control-unit", 32},
                {"low-density-structure", 300},
                {"radar", 8},
                {"effectivity-module-3", 4},
                {"electric-engine-unit", 36},
                {"raw-fish", 1},
                {"iron-plate", 380},
            },
            result = "spidertron_mk2"
        },
    }
end
data:extend{
    spidertron_mk2,
}