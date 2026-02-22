// block colors
if level == 0
{
	needed_blocks = [3,2,0,0,0];
	type_1_positions = [64-16, 64+16, 264-16, 264+16, 520-16, 520+16]
	type_2_positions = [136-16, 136+16, 488-16, 488+16]
}
if level == 1
{
	needed_blocks = [4,4,2,0,0]
}

// total amount of needed blocks
for (var i = 0; i < 5; ++i)
{
    total_len += needed_blocks[i];
}

if room == rmMenu
{
	audio_play_sound(mscIntro, 2, true, 0.75);
}
if room == rmGame 
{ 
	alarm[0] = 10;
	audio_stop_sound(mscIntro);
	if !audio_is_playing(mscMainTheme)
	{ audio_play_sound(mscMainTheme, 2, true, 0.75); }
}