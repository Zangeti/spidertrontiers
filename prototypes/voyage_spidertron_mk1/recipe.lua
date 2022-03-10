local voyage_spidertron_mk1

if (settings.startup["stack-spidertron-recipes"].value == true) then
    voyage_spidertron_mk1 = {
        type = "recipe",
        name = "voyage_spidertron_mk1",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 30},
                {"iron-gear-wheel", 120},
                {"steel-plate", 120},
                {"iron-stick", 32},
                {"engine-unit", 8},
                {"copper-cable", 50},
                {"prototype_spidertron", 1},
            },
            result = "voyage_spidertron_mk1"
        },
    }
else
    voyage_spidertron_mk1 = {
        type = "recipe",
        name = "voyage_spidertron_mk1",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 50},
                {"iron-gear-wheel", 160},
                {"steel-plate", 250},
                {"iron-stick", 32},
                {"engine-unit", 8},
                {"copper-cable", 50},
                {"iron-plate", 120},
            },
            result = "voyage_spidertron_mk1"
        },
    }
end

data:extend{
    voyage_spidertron_mk1,
}