local bulwark_spidertron_mk2

if (settings.startup["stack-spidertron-recipes"].value == true) then
    bulwark_spidertron_mk2 = {
        type = "recipe",
        name = "bulwark_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 50},
                {"iron-gear-wheel", 16},
                {"submachine-gun", 1},
                {"rocket-launcher", 2},
                {"steel-plate", 650},
                {"electric-engine-unit", 14},
                {"iron-stick", 64},
                {"copper-cable", 35},
                {"bulwark_spidertron_mk1", 1},
            },
            result = "bulwark_spidertron_mk2"
        },
    }
else
    bulwark_spidertron_mk2 = {
        type = "recipe",
        name = "bulwark_spidertron_mk2",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 50},
                {"iron-gear-wheel", 230},
                {"submachine-gun", 2},
                {"rocket-launcher", 4},
                {"steel-plate", 650},
                {"electric-engine-unit", 14},
                {"iron-stick", 64},
                {"copper-cable", 35},
                {"iron-plate", 210},
            },
            result = "bulwark_spidertron_mk2"
        },
    }
end

data:extend{
    bulwark_spidertron_mk2,
}