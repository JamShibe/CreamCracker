/// @description Insert description here
// You can write your code in this editor


if(obj_player and visible) {
	if(distance_to_object(obj_player) < 5 and obj_player.sprite_index = spr_player) {
		obj_player.sprite_index = spr_player_stick;
		instance_destroy(self)
	}
}