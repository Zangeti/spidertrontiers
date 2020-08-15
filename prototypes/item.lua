local spider_tron_mk3 = {
    type = "item-with-entity-data",
    name = "spidertron_mk3",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk3.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    order = "b[personal-transport]-c[spidertron]-a[spider]",
    place_result="spidertron_mk3",
    stack_size = 1,
}

local spider_tron_mk2 = {
    type = "item-with-entity-data",
    name = "spidertron_mk2",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mk2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    order = "b[personal-transport]-c[spidertron]-a[spider]",
    place_result="spidertron_mk2",
    stack_size = 1,
}

data:extend{
	spider_tron_mk3,
	spider_tron_mk2,
}