/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_right)) {
	audio_play_sound(s_move,1,false)
	select++;
	image_index++;
}

if(keyboard_check_pressed(vk_left)) {
	audio_play_sound(s_move,1,false)
	select--;
	image_index--;
}

if select < 0 {
	select = 7
}
if select > 7 {
	select = 0
}


if(keyboard_check_pressed(vk_space)) {
	audio_play_sound(s_select,1,false)
	audio_play_sound(s_music,1, true)
	switch(select) {
		case 1:
			to_room = Room2;
			break;
		case 2:
			to_room = Room3;
			break;
		case 3:
			to_room = Room4;
			break;
		case 4:
			to_room = Room5;
			break;
		case 5:
			to_room = Room6;
			break;
		case 6:
			to_room = Room7;
			break;
		case 7:
			to_room = Room8;
			break;
		case 0:
			to_room = Room1;
			break;
	}
	var _transition = instance_create_depth(0,0,-999,obj_transition)
	_transition.to_room = to_room
}

if(keyboard_check(vk_escape)) {
	audio_play_sound(s_move,1,false)
	room_goto(Menu)
}