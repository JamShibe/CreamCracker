/// @description Insert description here
// You can write your code in this editor


function close() {
	if sprite_index == spr_open_door {
		instance_create_layer(x,y,"Walls",obj_wall)
		sprite_index = spr_closed_door
	}
}