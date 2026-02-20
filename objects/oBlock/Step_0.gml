vsp = vsp + grv;

// Vertical collision
if (place_meeting(x,y+vsp,collision))
{

	while (!place_meeting(x,y+sign(vsp),collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;