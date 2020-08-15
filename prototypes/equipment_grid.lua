local mk2EquipmentGrid = {
    type = "equipment-grid",
    name = "spidertron-mk2-equipment-grid",
    width = 10,
    height = 10,
    equipment_categories = {"armor"}
}

local mk3EquipmentGrid = {
    type = "equipment-grid",
    name = "spidertron-mk3-equipment-grid",
    width = 10,
    height = 20,
    equipment_categories = {"armor"}
}

data:extend{
	mk2EquipmentGrid,
	mk3EquipmentGrid,
}