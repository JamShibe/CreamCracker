/// @description Insert description here
// You can write your code in this editor


var _player_distance = distance_to_object(obj_player);
var _move_percent = _player_distance * 0.05;
move_towards_point(obj_player.x, obj_player.y, _move_percent);

var _camera_x = view_wport[0]/2;
var _camera_y = view_hport[0]/2;

camera_set_view_border(camera, _camera_x, _camera_y);