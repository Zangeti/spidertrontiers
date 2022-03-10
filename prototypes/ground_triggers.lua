return {
	get_leg_hit_the_ground_trigger_vanilla = function()
	    return {
	        {
	            type = "create-trivial-smoke",
	            smoke_name = "smoke-building",
	            repeat_count = 4,
	            starting_frame_deviation = 5,
	            starting_frame_speed_deviation = 5,
	            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}},
	            speed_from_center = 0.03
	        }
	    }
	end
}