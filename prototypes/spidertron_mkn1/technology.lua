local spider_tron_mk_1 = {
    type = "technology",
    name = "spidertron_mkn1",
    icon_size = 128,
    icon = "__spidertrontiers__/graphics/technology/spidertron_mkn1.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "spidertron_mkn1"
        },
    },
    prerequisites = {"battery", "military-science-pack"},
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
    spider_tron_mk_1,
}