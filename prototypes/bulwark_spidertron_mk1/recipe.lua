local bulwark_spidertron_mk1

if (settings.startup["stack-spidertron-recipes"].value == true) then
    bulwark_spidertron_mk1 = {
        type = "recipe",
        name = "bulwark_spidertron_mk1",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 50},
                {"iron-gear-wheel", 16},
                {"submachine-gun", 1},
                {"steel-plate", 450},
                {"engine-unit", 16},
                {"iron-stick", 48},
                {"copper-cable", 40},
                {"prototype_spidertron", 1},
            },
            result = "bulwark_spidertron_mk1"
        },
    }
else
    bulwark_spidertron_mk1 = {
        type = "recipe",
        name = "bulwark_spidertron_mk1",
        normal = {
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"electronic-circuit", 75},
                {"iron-gear-wheel", 164},
                {"submachine-gun", 1},
                {"steel-plate", 450},
                {"engine-unit", 16},
                {"iron-stick", 48},
                {"copper-cable", 40},
                {"iron-plate", 120},
            },
            result = "bulwark_spidertron_mk1"
        },
    }
end

data:extend{
    bulwark_spidertron_mk1,
}