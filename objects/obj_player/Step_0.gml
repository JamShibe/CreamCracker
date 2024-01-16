//Assigns Controls
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//Get x and y speed
x_speed = (right_key - left_key) * total_speed;
y_speed = (down_key - up_key) * total_speed;

//Collisions Code
if place_meeting(x + x_speed, y, obj_wall) or place_meeting(x, y, obj_room_change) {
	x_speed = 0
}
if place_meeting(x, y + y_speed, obj_wall) or place_meeting(x, y, obj_room_change)  {
	y_speed = 0
}

//Move object
x += x_speed
y += y_speed