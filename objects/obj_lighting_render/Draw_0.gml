/// @description Insert description here
// You can write your code in this editor


if(surface_exists(lighting_surface) == false) {
	lighting_surface = surface_create(room_width, room_height);
}

surface_set_target(lighting_surface);

draw_clear_alpha(c_black, 0.98);

with(obj_lighting_cutout) {
	
	wobble_amount_x = image_xscale + random_range(-wobble, wobble);
	wobble_amount_y = image_yscale + random_range(-wobble, wobble);
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, wobble_amount_x, wobble_amount_y, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sprite_index, image_index, x, y, wobble_amount_x, wobble_amount_y, 0, colour, intensity);
	
	gpu_set_blendmode(bm_normal);

}

surface_reset_target();

draw_surface(lighting_surface, 0, 0);