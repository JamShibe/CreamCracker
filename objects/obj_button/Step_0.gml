/// @description Insert description here
// You can write your code in this editor


var _player = instance_place(x,y,obj_player)
if(_player) {
	if _player.move_amount <= 0 and active == true {
		with obj_door {
			self.change()
		}
		audio_play_sound(s_select,1, false)
		active = false;
	}
}