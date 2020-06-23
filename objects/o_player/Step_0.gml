/// @description 

#region // Player Movement

image_speed = 0
var animation_speed = 0.6
x_input = keyboard_check(vk_right) - keyboard_check(vk_left)
y_input = keyboard_check(vk_down) - keyboard_check(vk_up)

player_direction = point_direction(0, 0, x_input, y_input)


if x_input != 0 && !place_meeting(x + spd * x_input, y, o_solid)
	{
		x += spd * x_input
		facing = dir.right
		image_speed = animation_speed
		image_xscale = x_input
	}
	
if y_input != 0 && !place_meeting(x, y + spd * y_input, o_solid)
	{
		y += spd * y_input
		if y_input < 0
			{
				facing = dir.up
			}
		else 
			{
				facing = dir.down
			}
		image_speed = animation_speed		
	}
	
sprite_index = sprite[player.move, facing]
if x_input == 0 && y_input == 0 
	{
		image_index = 0
	}
#endregion