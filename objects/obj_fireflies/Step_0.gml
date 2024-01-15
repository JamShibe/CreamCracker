/// @description Insert description here
// You can write your code in this editor


if(distance_to_point(positions[current_pos][0],positions[current_pos][1]) > 5) {
	move_towards_point(positions[current_pos][0],positions[current_pos][1],5)
} else if(distance_to_object(obj_player) < 1) {
		speed = 0;
		current_pos += 1;
	}
	if current_pos > array_length(positions) - 1{
		if looping == true {
			current_pos = 0;
		} else {
			current_pos -= 1;
		}
		
	}