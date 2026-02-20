// block colors
if level == 0
{
	needed_blocks[0] = 3;
	needed_blocks[1] = 2;
}
if level == 1
{
	needed_blocks = [5,4,3,2,1]
}


if needed_blocks != existing_blocks 
{
	for (var i = 0; i < 5; i += 1)
	{
		var _needed = needed_blocks[i];
		repeat(_needed)
		{
				var xx = choose(
					irandom_range(32, room_width*0.4),
					irandom_range(room_width*0.6, room_width-32)
				);
				var yy = choose(
					irandom_range(0, room_height*0.3),
					irandom_range(room_height*0.1, room_height*0.35)
				);
				var inst = instance_create_layer(xx, yy, "Instances", oBlock);
				with (inst)
				{
					image_index = i;
				}
				existing_blocks[i] += 1;
		}
	}
}
