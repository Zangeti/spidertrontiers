local spider_tron_mk_1 = {
    type = "item-with-entity-data",
    name = "spidertron_mkn1",
    icon = "__spidertrontiers__/graphics/icons/spidertron_mkn1.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    order = "b[personal-transport]-c[spidertron]-a[spider]",
    place_result="spidertron_mkn1",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-a[Mkn1]",
}

data:extend{
	spider_tron_mk_1,
}