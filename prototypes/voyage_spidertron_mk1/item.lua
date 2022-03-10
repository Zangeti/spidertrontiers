local voyage_spidertron_mk1 = {
    type = "item-with-entity-data",
    name = "voyage_spidertron_mk1",
    icon = "__spidertrontiers-circulardependency__/graphics/icons/voyage_spidertron_mk1.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    place_result="voyage_spidertron_mk1",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-h[voyage-spidertron-mk1]",
}

data:extend{
	voyage_spidertron_mk1,
}