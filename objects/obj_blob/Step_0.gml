/// @description Insert description here
// You can write your code in this editor

if(move_amount > 0) {
	y = y + ymove;
	x = x + xmove;
	move_amount--;
}

if(move_amount <= 0) {
	ymove = 0;
	xmove = 0;
}

if(move_amount <= 0) {
	var _bad_blob = instance_place(x,y, obj_blob)
	if(_bad_blob) {
		if _bad_blob.move_amount == 0 {
			instance_destroy(_bad_blob)
		}
	}
	if(place_meeting(x,y,obj_player) or place_meeting(x,y,obj_exit)) {
		audio_play_sound(s_death,1, false)
		if(obj_player) {
			obj_player.x = -20
			obj_player.y = -20
		}
		if(obj_exit) {
			instance_destroy(obj_exit)
		}
		instance_destroy(obj_exit)
		var _transition = instance_create_depth(0,0,-999,obj_transition)
		_transition.to_room = room
		
	}
}

