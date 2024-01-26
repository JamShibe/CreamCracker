/// @description Insert description here
// You can write your code in this editor


var _player = instance_place(x,y,obj_player)
if(_player) {
	if _player.move_amount <= 0 {
		audio_play_sound(s_select,1, false)
		var _transition = instance_create_depth(0,0,-999, obj_transition)
		_transition.to_room = target_room
		instance_destroy()
	}
}