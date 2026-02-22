// keyboard inputs
var _move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _jump = keyboard_check_pressed(vk_space);
var _playing = audio_is_playing(sfxStep);

if oController.correct_blocks && correct_position { image_blend = c_lime; }
else { image_blend = -1; }

hsp = _move * move_speed;

vsp = vsp + grv;

// jump
if place_meeting(x,y+1,collision) && _jump
{

vsp = -jump_speed;

}

// horizontal collision
if place_meeting(x+hsp,y,collision)
{

	while (!place_meeting(x+sign(hsp),y,collision))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// vertical collision
if place_meeting(x,y+vsp,collision)
{

	while (!place_meeting(x,y+sign(vsp),collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


// position check
if array_length(oController.player_position) > 1
{
	if x > array_get(oController.player_position, 0) && x < array_get(oController.player_position, 1)
		{ correct_position = true; }
	else
		{ correct_position = false; }
}

// flip sprite
if _move != 0
{
    
	if (_move < 0) image_xscale = 1;
    else if (_move > 0) image_xscale = -1;
	if !_playing
	{ audio_play_sound(sfxStep, 2, true, 0.75); }
	if carrying sprite_index = sPlayerHoldingWalk;
	else sprite_index = sPlayerWalk;
}
if _move == 0
{ 
	audio_stop_sound(sfxStep); 
	if carrying sprite_index = sPlayerHolding;
	else sprite_index = sPlayer;
}