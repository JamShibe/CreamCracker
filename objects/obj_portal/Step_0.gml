/// @description Insert description here
// You can write your code in this editor


var _player = instance_place(x, y, obj_player)
if(_player) {
	if(target_portal and _player.move_amount <= 0 and active = true) {
		_player.x = target_portal.x
		_player.y = target_portal.y
		audio_play_sound(s_select,1, false)
		target_portal.active = false
	}
}

if(active == false) {
	if!(place_meeting(x,y,obj_player)) {
		active = true;
	}
}