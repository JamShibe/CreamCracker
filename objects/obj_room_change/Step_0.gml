if(place_meeting(x,y,obj_player) and !instance_exists(obj_transition)) {
	var _transition = instance_create_depth(0,0,-9999, obj_transition);
	_transition.target_x = target_x;
	_transition.target_y = target_y;
	_transition.to_room = to_room;
}