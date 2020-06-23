/// @description

image_speed = 0
spd = 1.5
facing = dir.right
global.life = 4
player_direction = 0

enum player {
	move
}

// The order here matters because gml assigns directions by degree
// right = 90, up = 180, left = 270, down = 360/0
enum dir {
	right,
	up,
	left,
	down,
}


// Sprite Move Lookup Table
sprite[player.move, dir.right] = s_player_run_right
sprite[player.move, dir.up] = s_player_run_up
sprite[player.move, dir.left] = s_player_run_right
sprite[player.move, dir.down] = s_player_run_down