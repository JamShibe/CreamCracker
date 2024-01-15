/// @description Insert description here
// You can write your code in this editor


if(obj_player and keyboard_check(ord("E"))) {
	if(distance_to_object(obj_player) < 10) {
		if(obj_player.sprite_index = spr_player_torch and sprite_index = spr_logs) {
			sprite_index = spr_fire;
			var _fire = instance_create_layer(x,y,self.layer,obj_lighting_cutout);
			_fire.parent = self;
			_fire.colour = $FF1B50FF
			_fire.wobble = 0.02;
			_fire.image_xscale = 1.5;
			_fire.image_yscale = 1.5;
			with(obj_player) {
				sprite_index = spr_player;
				instance_destroy(torch)
			}
			var _num = self.fire_num;
			with(obj_stick) {
				if(fire_num = _num) {
					visible = true;
				}
			}
			with(obj_ice) {
				if(fire_num = _num) {
					instance_destroy(self)
				}
			}
		} else if(obj_player.sprite_index = spr_player_stick) {
			obj_player.sprite_index = spr_player_torch;
			var _torch = instance_create_layer(obj_player.x,obj_player.y,"Player",obj_lighting_cutout);
			_torch.image_xscale = 0.75;
			_torch.image_yscale = 0.75;
			_torch.parent = obj_player;
			_torch.wobble = 0.01
			obj_player.torch = _torch

			}
	}
}



