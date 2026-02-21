if needed_blocks != existing_blocks 
{
	for (var i = 0; i < 5; i += 1)
	{
		var _needed = needed_blocks[i];
		repeat(_needed)
		{
				var xx = choose(
					irandom_range(48, room_width*0.5),
					irandom_range(room_width*0.5, room_width-48)
				);
				var yy = irandom_range(0, room_height*0.3);
				var inst = instance_create_layer(xx, yy, "Instances", oBlock);
				with (inst)
				{
					image_index = i;
				}
				existing_blocks[i] += 1;
		}
	}
}