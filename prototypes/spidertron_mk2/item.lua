local spidertron_mk2 = {
    type = "item-with-entity-data",
    name = "spidertron_mk2",
    icon = "__spidertrontiers-circulardependency__/graphics/icons/spidertron_mk2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    place_result="spidertron_mk2",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-m[spidertron-mk2]",
}

data:extend{
	spidertron_mk2,
}