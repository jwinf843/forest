/// @description 

#region // Player Movement

image_speed = 0
var _animation_speed = 0.6

if keyboard_check(vk_right) && !place_meeting(x + 4, y, o_solid)
	{
		x += spd
		sprite_index = s_player_run_right
		image_speed = _animation_speed
		image_xscale = 1
	}
if keyboard_check(vk_left) && !place_meeting(x - 4, y, o_solid)
	{
		x -= spd
		sprite_index = s_player_run_right
		image_speed = _animation_speed
		image_xscale = -1
	}
	
if keyboard_check(vk_up) && !place_meeting(x, y - 4, o_solid)
	{
		y -= spd	
		sprite_index = s_player_run_up
		image_speed = _animation_speed
	}
if keyboard_check(vk_down) && !place_meeting(x, y + 4, o_solid)
	{
		y += spd	
		sprite_index = s_player_run_down
		image_speed = _animation_speed
	}
#endregion