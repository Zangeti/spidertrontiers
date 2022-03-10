local bulwark_spidertron_mk2 = {
    type = "technology",
    name = "bulwark_spidertron_mk2",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/bulwark_spidertron_mk2.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bulwark_spidertron_mk2"
        },
    },
    prerequisites = {"bulwark_spidertron_mk1", "electric-engine", "rocketry", "tank"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
        },
        time = 20,
        count = 500
    },
    order = "d-e-g"
}

data:extend{
    bulwark_spidertron_mk2,
}