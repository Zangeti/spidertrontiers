local spidertron_mk_1 = {
    type = "item-with-entity-data",
    name = "spidertron_mkn1",
    icon = "__spidertrontiers-circulardependency__/graphics/icons/spidertron_mkn1.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    order = "b[personal-transport]-c[spidertron]-a[spider]",
    place_result="spidertron_mkn1",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-j[spidertron-mk-1]",
}

data:extend{
	spidertron_mk_1,
}