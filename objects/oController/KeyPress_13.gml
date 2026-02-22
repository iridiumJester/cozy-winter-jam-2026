if room == rmMenu { room_goto(rmGame); }

if win_met {
	if level < 2 {
		level += 1;
		room_restart();
	}
}