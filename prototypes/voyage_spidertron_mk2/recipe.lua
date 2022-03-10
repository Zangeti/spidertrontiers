local voyage_spidertron_mk2

if (settings.startup["stack-spidertron-recipes"].value == true) then
    voyage_spidertron_mk2 = {
        type = "recipe",
        name = "voyage_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 25},
                {"advanced-circuit", 5},
                {"iron-gear-wheel", 50},
                {"steel-plate", 80},
                {"iron-stick", 64},
                {"electric-engine-unit", 10},
                {"copper-cable", 55},
                {"voyage_spidertron_mk1", 1},

            },
            result = "voyage_spidertron_mk2"
        },
    }
else
    voyage_spidertron_mk2 = {
        type = "recipe",
        name = "voyage_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 75},
                {"advanced-circuit", 8},
                {"iron-gear-wheel", 200},
                {"steel-plate", 300},
                {"iron-stick", 64},
                {"electric-engine-unit", 10},
                {"copper-cable", 55},
                {"iron-plate", 200},

            },
            result = "voyage_spidertron_mk2"
        },
    }
end

data:extend{
    voyage_spidertron_mk2,
}