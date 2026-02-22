menuMessage = @"
Move the ice to match the reflection below you!
Walk with A+D, jump with space, move camera with W+S.
Pick up blocks with E. Put them down with F.

>> Press enter to start! <<"

switch(room)
{
	case rmMenu:
		draw_set_halign(fa_center);
		draw_text_transformed(room_width, 160, "Playing with touys",3, 3, 0);
		draw_text(room_width, 376, menuMessage);
}