/// @description Insert description here
// You can write your code in this editor


light = instance_create_layer(x, y, self.layer, obj_lighting_cutout)
light.colour = $FF00FFFA
light.intensity = 0.6
light.parent = self;
light.image_xscale = 0.5
light.image_yscale = 0.5

current_pos = 0;
positions = [];
looping = true;