/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_down) and sprite_index == spr_start_game_selected and cooldown <= 0) {
	sprite_index = spr_start_game
	obj_select_level.sprite_index = spr_select_level_selected
	obj_select_level.cooldown = 20
	audio_play_sound(s_move,1, false)
}

if(keyboard_check_pressed(vk_space) and sprite_index == spr_start_game_selected) {
	audio_play_sound(s_select,1, false)
	audio_play_sound(s_music,1, true)
	var _transition = instance_create_depth(0,0,-999,obj_transition)
	_transition.to_room = Room1;
}

if(cooldown > 0) {
	cooldown--;
}