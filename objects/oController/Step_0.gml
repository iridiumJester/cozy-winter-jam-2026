var _camera = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * camera_speed;
var _half_height = sprite_height * 0.5;

y = y + _camera;

if (y < _half_height) {
    y = _half_height;
}

if (y > (room_height) - _half_height) {
    y = room_height - _half_height;
}

