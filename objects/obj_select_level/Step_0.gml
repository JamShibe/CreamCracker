/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_up) and sprite_index == spr_select_level_selected and cooldown <= 0) {
	audio_play_sound(s_move,1, false)
	sprite_index = spr_select_level
	obj_start_game.sprite_index = spr_start_game_selected
	obj_start_game.cooldown = 20
}
if(keyboard_check_pressed(vk_down) and sprite_index == spr_select_level_selected and cooldown <= 0) {
	audio_play_sound(s_move,1, false)
	sprite_index = spr_select_level
	obj_quit.sprite_index = spr_quit_selected
	obj_quit.cooldown = 20;
}

if(keyboard_check_pressed(vk_space) and sprite_index == spr_select_level_selected) {
	show_debug_message("TO DO")
}

if(cooldown > 0) {
	cooldown--;
}