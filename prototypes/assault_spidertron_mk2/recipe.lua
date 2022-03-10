local assault_spidertron_mk2

if (settings.startup["stack-spidertron-recipes"].value == true) then
    assault_spidertron_mk2 = {
        type = "recipe",
        name = "assault_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 200},
                {"iron-gear-wheel", 24},
                {"submachine-gun", 8},
                {"steel-plate", 150},
                {"engine-unit", 8},
                {"iron-stick", 32},
                {"copper-cable", 40},
                {"assault_spidertron_mk1", 1},
            },
            result = "assault_spidertron_mk2"
        },
    }
else
    assault_spidertron_mk2 = {
        type = "recipe",
        name = "assault_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 150},
                {"iron-gear-wheel", 220},
                {"submachine-gun", 12},
                {"steel-plate", 300},
                {"engine-unit", 8},
                {"iron-stick", 50},
                {"copper-cable", 60},
                {"iron-plate", 100},
            },
            result = "assault_spidertron_mk2"
        },
    }
end

data:extend{
    assault_spidertron_mk2,
}