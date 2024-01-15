/// @description Just movement for now.

//Handles Input
if(keyboard_check(ord("W"))) {
	y = y - walk_speed
}

if(keyboard_check(ord("S"))) {
	y = y + walk_speed
}

if(keyboard_check(ord("A"))) {
	x = x - walk_speed
}

if(keyboard_check(ord("D"))) {
	x = x + walk_speed
}