local spidertron_mk3 = {
    type = "item-with-entity-data",
    name = "spidertron_mk3",
    icon = "__spidertrontiers-circulardependency__/graphics/icons/spidertron_mk3.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    place_result="spidertron_mk3",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-n[spidertron-mk3]",
}

data:extend{
	spidertron_mk3,
}