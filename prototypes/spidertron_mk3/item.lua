local spider_tron_mk3 = {
    type = "item-with-entity-data",
    name = "spidertron_mk3",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk3.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    place_result="spidertron_mk3",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-e[Mk3]",
}

data:extend{
	spider_tron_mk3,
}