local spider_tron_mk0 = {
    type = "item-with-entity-data",
    name = "spidertron_mk0",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk0.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    place_result="spidertron_mk0",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-b[Mk0]",
}

data:extend{
	spider_tron_mk0,
}