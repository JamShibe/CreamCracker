var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

var _p = 0.9;
draw_sprite_tiled(bg_parallax_back, 0, _cam_x*_p, _cam_y*_p)

_p = 0.8;
draw_sprite_tiled(bg_parallax_front, 0, _cam_x*_p, (_cam_y-25)*_p)