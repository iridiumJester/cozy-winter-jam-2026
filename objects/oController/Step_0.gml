var _camera = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * camera_speed;
var _half_height = sprite_height * 0.5;
var _count_true = 0;

y = y + _camera;

if (y < _half_height) {
    y = _half_height;
}

if (y > (room_height) - _half_height) {
    y = room_height - _half_height;
}

with (oBlock) 
{
    if (variable_instance_exists(id, "correct_position") && correct_position) 
	{
        _count_true++;
    }
	
}

if _count_true == total_len
{ correct_blocks = true; }

if correct_blocks && oPlayer.correct_position
{ win_met = true; }

// show_debug_message("Instances with correct_position = true: " + string(_count_true));
// show_debug_message("Total blocks needed: " + string(total_len));