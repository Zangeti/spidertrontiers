local sounds = require("__base__.prototypes.entity.sounds")

local utils = {

    make_spidertron_leg = function(spidertron_name, scale, initial_movement_speed, movement_acceleration, leg_thickness, number, animation, base_sprite, ending_sprite)
        local leg = {
            type = "spider-leg",
            name = spidertron_name .. "-leg-" .. number,

            localised_name = {"entity-name.spidertron-leg"},
            collision_box = {{-0.05, -0.05}, {0.05, 0.05}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            icon = "__base__/graphics/icons/spidertron.png",
            icon_size = 64, icon_mipmaps = 4,
            walking_sound_volume_modifier = 0.6,
            target_position_randomisation_distance = 0.3 * scale,
            minimal_step_size = 1 * scale,
            working_sound =
            {
                match_progress_to_activity = true,
                sound = sounds.spidertron_leg,
                audible_distance_modifier = 0.5
            },
            part_length = 3.5 * scale,
            initial_movement_speed = initial_movement_speed,
            movement_acceleration = movement_acceleration,
            max_health = 100,
            movement_based_position_selection_distance = 4 * scale,
            selectable_in_game = false,
            graphics_set = animation.legs[number]
        }

        if (settings.startup["show-spidertron-legs"].value == false) then
            leg.graphics_set = {}
            leg.walking_sound_volume_modifier = 0
        end

        return leg
    end,
}

return utils