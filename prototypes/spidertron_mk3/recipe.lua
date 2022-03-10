local spidertron_mk3

if (settings.startup["stack-spidertron-recipes"].value == true) then
    spidertron_mk3 = {
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
else
    spidertron_mk3 = {
        type = "recipe",
        name = "spidertron_mk3",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"exoskeleton-equipment", 25},
                {"fusion-reactor-equipment", 10},
                {"satellite", 2},
                {"rocket-control-unit", 48},
                {"low-density-structure", 450},
                {"radar", 12},
                {"raw-fish", 2},
                {"iron-plate", 690},
            },
            result = "spidertron_mk3"
        },
    }
end
data:extend{
    spidertron_mk3,
}