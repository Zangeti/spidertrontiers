local assault_spidertron_mk1 = {
    type = "technology",
    name = "assault_spidertron_mk1",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/assault_spidertron_mk1.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "assault_spidertron_mk1"
        },
    },
    prerequisites = {"prototype_spidertron", "military-science-pack", "gun-turret"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1}
        },
        time = 30,
        count = 150
    },
    order = "d-e-g"
}

data:extend{
    assault_spidertron_mk1,
}