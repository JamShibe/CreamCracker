/// @description Insert description here
// You can write your code in this editor

if(move_amount <= 0) {
	yspeed = 0;
	xspeed = 0;
	if (keyboard_check(vk_up)) {
		move_amount = 32;
		yspeed = -1
	} else if (keyboard_check(vk_right)) {
		move_amount = 32;
		xspeed = 1
	} else if (keyboard_check(vk_down)) {
		move_amount = 32;
		yspeed = 1
	} else if (keyboard_check(vk_left)) {
		move_amount = 32;
		xspeed = -1
	}
}

if(move_amount == 32) {
	with(obj_blob) {
		self.check()
	}
}

if(move_amount > 0) {
	y = y + yspeed;
	x = x + xspeed;
	move_amount--;
}