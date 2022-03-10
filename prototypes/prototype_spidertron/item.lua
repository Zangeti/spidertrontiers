local prototype_spidertron = {
    type = "item-with-entity-data",
    name = "prototype_spidertron",
    icon = "__spidertrontiers-circulardependency__/graphics/icons/prototype_spidertron.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "transport",
    order = "b[personal-transport]-c[spidertron]-a[spider]",
    place_result="prototype_spidertron",
    stack_size = 1,
    order = "b[personal-transport]-c[spidertron]-b[spider]-a[prototype-spidertron]",
}

data:extend{
	prototype_spidertron,
}