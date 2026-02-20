// keyboard inputs
var _move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _jump = keyboard_check_pressed(vk_space);
var _grab = keyboard_check(ord("E"))

hsp = _move * move_speed;

vsp = vsp + grv;

if (place_meeting(x,y+1,collision)) && (_jump)
{

vsp = -jump_speed;

}

// horizontal collision
if (place_meeting(x+hsp,y,collision))
{

	while (!place_meeting(x+sign(hsp),y,collision))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// vertical collision
if (place_meeting(x,y+vsp,collision))
{

	while (!place_meeting(x,y+sign(vsp),collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// flip sprite
if (_move != 0)
{
    if (_move < 0) image_xscale = 1;
    else if (_move > 0) image_xscale = -1;
}

// grab block
if (place_meeting(x,y,oBlock)) && _grab
{ carrying = true; }

if (carrying){
	oBlock.x=x + 20;
	oBlock.y=y - 20;
}

if (carrying) && _grab 
{ carrying = false; }