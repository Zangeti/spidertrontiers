local bulwark_spidertron_mk1 = {
    type = "technology",
    name = "bulwark_spidertron_mk1",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/bulwark_spidertron_mk1.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bulwark_spidertron_mk1"
        },
    },
    prerequisites = {"prototype_spidertron", "engine", "military-2"},
    unit = {
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 20,
        count = 300
    },
    order = "d-e-g"
}

data:extend{
    bulwark_spidertron_mk1,
}