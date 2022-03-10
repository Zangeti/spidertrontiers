local scout_spidertron_mk2

if (settings.startup["stack-spidertron-recipes"].value == true) then
    scout_spidertron_mk2 = {
        type = "recipe",
        name = "scout_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 25},
                {"iron-gear-wheel", 40},
                {"submachine-gun", 1},
                {"rocket-launcher", 1},
                {"steel-plate", 25},
                {"iron-stick", 16},
                {"radar", 4},
                {"electric-engine-unit", 3},
                {"scout_spidertron_mk1", 1},
            },
            result = "scout_spidertron_mk2"
        },
    }
else
    scout_spidertron_mk2 = {
        type = "recipe",
        name = "scout_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 80},
                {"iron-gear-wheel", 140},
                {"submachine-gun", 1},
                {"rocket-launcher", 1},
                {"steel-plate", 90},
                {"iron-stick", 32},
                {"radar", 6},
                {"electric-engine-unit", 3},
                {"iron-plate", 120},
            },
            result = "scout_spidertron_mk2"
        },
    }
end

data:extend{
    scout_spidertron_mk2,
}