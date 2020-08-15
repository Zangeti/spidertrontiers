local spider_tron_mk2 = {
    type = "item-with-entity-data",
    name = "spidertron_mk2",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    place_result="spidertron_mk2",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-d[Mk2]",
}

data:extend{
	spider_tron_mk2,
}