vsp = vsp + grv;
var _1_len = array_length(oController.type_1_positions);
var _2_len = array_length(oController.type_2_positions);
if correct_position { image_blend = c_lime; }


// vertical collision
if (place_meeting(x,y+vsp,collision))
{

	while (!place_meeting(x,y+sign(vsp),collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	
}

if (place_meeting(x,y+vsp,oBlock))
{

	while (!place_meeting(x,y+sign(vsp),oBlock))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if image_index == 0 
{
	for (var i = 0; i < _1_len; i += 2)
	{
		if x > array_get(oController.type_1_positions, i) && x < array_get(oController.type_1_positions, i + 1)
			{
				correct_position = true;
			}
	}
}
if image_index == 1 
{
	// nothing
	for (var i = 0; i < _2_len; i += 2)
	{
		if x > array_get(oController.type_2_positions, i) && x < array_get(oController.type_2_positions, i + 1)
			{
				correct_position = true;
			}
	}
} 