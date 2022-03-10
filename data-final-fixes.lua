
-- bobvehicleequipment compatibility work
if not(settings.startup["bobmods-vehicleequipment-enablevehiclegrids"] == nil) then
	local grid_list = {
		"spidertron-mk-1-equipment-grid",
		"spidertron-mk0-equipment-grid",
		"spidertron-mk2-equipment-grid",
		"spidertron-mk3-equipment-grid",
		"prototype-spidertron-equipment-grid",
		"assault-spidertron-mk1-equipment-grid",
		"assault-spidertron-mk2-equipment-grid",
		"bulwark-spidertron-mk1-equipment-grid",
		"bulwark-spidertron-mk2-equipment-grid",
		"scout-spidertron-mk1-equipment-grid",
		"scout-spidertron-mk2-equipment-grid",
		"voyage-spidertron-mk1-equipment-grid",
		"voyage-spidertron-mk2-equipment-grid",
	}

	for index,grid in pairs(grid_list) do
		data.raw["equipment-grid"][grid].equipment_categories = {"spidertron", "vehicle", "armoured-vehicle"}
	end
end