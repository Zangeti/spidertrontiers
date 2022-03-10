-- control.lua
local ground_triggers = require("__spidertrontiers-circulardependency__.prototypes.ground_triggers")

script.on_event({defines.events.on_built_entity},
	function (event)
		if (event.created_entity.name == "bulwark_spidertron_mk2") then
			event.created_entity.color = {r=255, g=255, b=255}
		elseif (event.created_entity.name == "scout_spidertron_mk1") then
			event.created_entity.color = {r=255, g=70, b=255}
		elseif (event.created_entity.name == "scout_spidertron_mk2") then
			event.created_entity.color = {r=255, g=110, b=175}
		end
	end
)
