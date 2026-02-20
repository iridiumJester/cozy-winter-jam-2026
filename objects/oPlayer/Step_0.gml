var _move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _jump = keyboard_check_pressed(vk_space);

move_and_collide(_move * move_speed, 0, collision, undefined, undefined, undefined, move_speed, move_speed);

if (_move != 0)
{
    if (_move < 0) image_xscale = 1;
    else if (_move > 0) image_xscale = -1;
}

if (place_meeting(x,y+1,collision)) && (_jump)
{

vspeed = -jump_speed

}