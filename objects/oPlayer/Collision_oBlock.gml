var _grab = keyboard_check_pressed(ord("E"))
var _ungrab = keyboard_check_pressed(ord("F"))

// grab block
if _grab && can_hold
{ 
	carrying = true;
	can_hold = false;
	move_speed = 6;
	audio_play_sound(sfxBlip, 1, false, 0.75);
}

if _ungrab && !can_hold
{
	carrying = false;
	can_hold = true;
	move_speed = 8;
}


if carrying
{
	if image_xscale == 1 {
		other.x=x - 5;
		other.y=y + 11;
	}
	if image_xscale == -1 {
		other.x=x + 5;
		other.y=y + 11;
	}
}