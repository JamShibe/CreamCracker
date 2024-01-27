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

if!(image_index == 9 or image_index == 0) and move_amount == 0 {
	if((place_meeting(x,y+32,obj_blob)) and (place_meeting(x,y-32,obj_blob)) and (place_meeting(x+32,y,obj_blob)) and (place_meeting(x-32,y,obj_blob))) {
			image_index = 0;
	} else if(!(place_meeting(x,y+32,obj_blob)) and (place_meeting(x,y-32,obj_blob)) and !(place_meeting(x+32,y,obj_blob)) and (place_meeting(x-32,y,obj_blob))) {
			image_index = 2;
			instance_place(x,y-32,obj_blob).image_index = 0
			instance_place(x-32,y,obj_blob).image_index = 0
	} else if((place_meeting(x,y+32,obj_blob)) and !(place_meeting(x,y-32,obj_blob)) and !(place_meeting(x+32,y,obj_blob)) and (place_meeting(x-32,y,obj_blob))) {
			image_index = 4;
			instance_place(x,y+32,obj_blob).image_index = 0
			instance_place(x-32,y,obj_blob).image_index = 0
	} else if(!(place_meeting(x,y+32,obj_blob)) and (place_meeting(x,y-32,obj_blob)) and (place_meeting(x+32,y,obj_blob)) and !(place_meeting(x-32,y,obj_blob))) {
			image_index = 1;
			instance_place(x,y-32,obj_blob).image_index = 0
			instance_place(x+32,y,obj_blob).image_index = 0
	} else if((place_meeting(x,y+32,obj_blob)) and !(place_meeting(x,y-32,obj_blob)) and (place_meeting(x+32,y,obj_blob)) and !(place_meeting(x-32,y,obj_blob))) {
			image_index = 3;
			instance_place(x,y+32,obj_blob).image_index = 0
			instance_place(x+32,y,obj_blob).image_index = 0
	}
}



