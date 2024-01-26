if(keyboard_check_pressed(vk_up) and sprite_index == spr_quit_selected and cooldown <= 0
and obj_select_level) {
	audio_play_sound(s_move,1, false)
	sprite_index = spr_quit
	obj_select_level.sprite_index = spr_select_level_selected
	obj_select_level.cooldown = 20
}

if(keyboard_check_pressed(vk_space) and sprite_index == spr_quit_selected) {
	audio_play_sound(s_select,1, false)
	game_end()
}

if(cooldown > 0) {
	cooldown--;
}