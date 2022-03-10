local spidertron_mk_1 = {
    type = "technology",
    name = "spidertron_mkn1",
    icon_size = 128,
    icon = "__spidertrontiers-circulardependency__/graphics/technology/spidertron_mkn1.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "spidertron_mkn1"
        },
    },
    prerequisites = {"battery", "assault_spidertron_mk1", "bulwark_spidertron_mk1", "scout_spidertron_mk1", "voyage_spidertron_mk1"},
    unit = {
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 2},
        },
        time = 30,
        count = 400
    },
    order = "d-e-g"
}

data:extend{
    spidertron_mk_1,
}