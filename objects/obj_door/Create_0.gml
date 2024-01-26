/// @description Insert description here
// You can write your code in this editor


function change() {
	if sprite_index == spr_open_door {
		var _wall =instance_create_layer(x,y,"Walls",obj_wall)
		_wall.image_xscale = image_xscale
		_wall.image_yscale = image_yscale
		_wall.image_angle = image_angle
		sprite_index = spr_closed_door
	}
	else if sprite_index == spr_closed_door {
		var _wall = instance_place(x,y,obj_wall)
		if(_wall) {
			instance_destroy(_wall)
		}
		sprite_index = spr_open_door
	}
}