local scout_spidertron_mk1

if (settings.startup["stack-spidertron-recipes"].value == true) then
    scout_spidertron_mk1 = {
        type = "recipe",
        name = "scout_spidertron_mk1",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 50},
                {"iron-gear-wheel", 80},
                {"steel-plate", 80},
                {"engine-unit", 3},
                {"radar", 5},
                {"iron-stick", 16},
                {"copper-cable", 40},
                {"prototype_spidertron", 1},
            },
            result = "scout_spidertron_mk1",
        },
    }
else
    scout_spidertron_mk1 = {
        type = "recipe",
        name = "scout_spidertron_mk1",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 60},
                {"iron-gear-wheel", 100},
                {"steel-plate", 90},
                {"engine-unit", 3},
                {"radar", 5},
                {"iron-stick", 16},
                {"copper-cable", 40},
                {"iron-plate", 80},
            },
            result = "scout_spidertron_mk1",
        },
    }
end

data:extend{
    scout_spidertron_mk1,
}