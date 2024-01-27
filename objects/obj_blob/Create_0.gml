/// @description Insert description here
// You can write your code in this editor
xmove = 0;
ymove = 0;
move_amount = 16;
new_blob = noone;

function check() {
	image_index = 0
	
	if(!(place_meeting(x,y - 32, obj_wall) or place_meeting(x,y - 32, obj_blob))) {
		new_blob = instance_create_layer(x,y, "Blob", obj_blob)
		new_blob.ymove = -2;
		new_blob.image_index = 6
	}
	if(!(place_meeting(x,y + 32, obj_wall) or place_meeting(x,y + 32, obj_blob))) {
		new_blob = instance_create_layer(x,y, "Blob", obj_blob)
		new_blob.ymove = 2;
		new_blob.image_index = 7
	}
	if(!(place_meeting(x - 32,y, obj_wall) or place_meeting(x - 32,y, obj_blob))) {
		new_blob = instance_create_layer(x,y, "Blob", obj_blob)
		new_blob.xmove = -2;
		new_blob.image_index = 8
	}
	if(!(place_meeting(x + 32,y, obj_wall) or place_meeting(x + 32,y, obj_blob))) {
		new_blob = instance_create_layer(x,y, "Blob", obj_blob)
		new_blob.xmove = 2;
		new_blob.image_index = 5
	}
}

image_index = 0;