/// @description Insert description here
// You can write your code in this editor

if(move_amount <= 0) {
	yspeed = 0;
	xspeed = 0;
	if (keyboard_check(vk_up)) {
		move_amount = 16;
		yspeed = -2
	} else if (keyboard_check(vk_right)) {
		sprite_index = spr_player_right
		move_amount = 16;
		xspeed = 2
	} else if (keyboard_check(vk_down)) {
		move_amount = 16;
		yspeed = 2
	} else if (keyboard_check(vk_left)) {
		sprite_index = spr_player_left
		move_amount = 16;
		xspeed = -2
	}
	if(move_amount == 16) {
		with(obj_door_flipper) {
			self.flip()
		}
		with(obj_blob) {
			self.check()
		}
		audio_play_sound(s_move,1, false)
	}
	if (place_meeting(x + xspeed, y + yspeed, obj_wall) and !place_meeting(x,y,obj_door)) {
		xspeed = 0;
		yspeed = 0;
	}
}



if(move_amount > 0) {
	y = y + yspeed;
	x = x + xspeed;
	move_amount--;
}

if(keyboard_check_pressed(vk_escape)) {
	audio_play_sound(s_death,1, false)
	var _transition = instance_create_depth(0,0,-999,obj_transition)
	_transition.to_room = Menu
	instance_destroy()
}