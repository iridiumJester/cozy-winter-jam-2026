// block colors
if level == 0
{
	needed_blocks = [3,2,0,0,0];
}
if level == 1
{
	needed_blocks = [4,4,2,0,0]
}

if room == rmMenu
{
	audio_play_sound(mscIntro, 2, true, 0.75);
}
if room == rmGame 
{ 
	alarm[0] = 10;
	audio_stop_sound(mscIntro);
	audio_play_sound(mscMainTheme, 2, true, 0.75);
}