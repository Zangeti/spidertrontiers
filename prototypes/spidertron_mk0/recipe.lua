local spidertron_mk0

if (settings.startup["stack-spidertron-recipes"].value == true) then
    spidertron_mk0 = {
        type = "recipe",
        name = "spidertron_mk0",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"spidertron_mkn1", 1},
                {"battery", 40},
                {"rocket-launcher", 2},
                {"advanced-circuit", 15},
                {"electronic-circuit", 120},
                {"radar", 2},
                {"iron-stick", 32},
                {"copper-cable", 80},
                {"sulfur", 50},
            },
            result = "spidertron_mk0"
        },
    }
else
    spidertron_mk0 = {
        type = "recipe",
        name = "spidertron_mk0",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"iron-plate", 250},
                {"battery", 40},
                {"rocket-launcher", 4},
                {"advanced-circuit", 25},
                {"electronic-circuit", 180},
                {"radar", 2},
                {"iron-stick", 36},
                {"copper-cable", 80},
                {"sulfur", 80},
            },
            result = "spidertron_mk0"
        },
    }
end

data:extend{
    spidertron_mk0,
}