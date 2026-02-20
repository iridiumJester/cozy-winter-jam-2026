// keyboard inputs
var _move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _jump = keyboard_check_pressed(vk_space);

// left/right movement
move_and_collide(_move * move_speed, 0, collision, undefined, undefined, undefined, move_speed, move_speed);

// jump
if (place_meeting(x,y+1,collision)) && (_jump)
{

vspeed = -jump_speed

}
else if (place_meeting(x,y+1,collision))
{
	vspeed = 0;
}
else 
{
	vspeed = gravity;
}

// flip sprite
if (_move != 0)
{
    if (_move < 0) image_xscale = 1;
    else if (_move > 0) image_xscale = -1;
}

