if(keyboard_check_pressed(vk_space) ) {
	audio_play_sound(s_select,1, false)
	var _transition = instance_create_depth(0,0,-999,obj_transition)
	_transition.to_room = Menu;
}