menuMessage = @"
Move the ice to match the reflection below you!
Walk with A+D, jump with space, move camera with W+S.
Pick up blocks with E. Put them down with F.

>> Press enter to start! <<"

warningMessage = @"If you're holding a block and walk past another they will become inseparable 
and you'll have to start over or get creative. Avoid this by jumping over blocks when holding them."

switch(room)
{
	case rmMenu:
		draw_set_halign(fa_center);
		draw_text_transformed(room_width, 160, "Playing with touys",3, 3, 0);
		draw_text(room_width, 376, menuMessage);
		draw_text_colour(room_width, 512, warningMessage, c_red, c_red, c_red, c_red, 1);
}