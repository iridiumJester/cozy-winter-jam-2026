var _grab = keyboard_check_pressed(ord("E"))
var _ungrab = keyboard_check_pressed(ord("F"))

// grab block
if _grab
{ carrying = true; }

if _ungrab
{ carrying = false; }


if (carrying)
{
	if image_xscale == 1 {
		other.x=x - 5;
		other.y=y + 11;
	}
	if image_xscale == -1 {
		other.x=x + 5;
		other.y=y + 11;
	}
	sprite_index = sPlayerHolding;
}

if !carrying
{ sprite_index = sPlayer; }