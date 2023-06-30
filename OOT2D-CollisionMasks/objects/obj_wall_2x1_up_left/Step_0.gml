/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Link))
{
	if (have_created == false)
	{
		have_created = true;
		lowest_val = ds_grid_get(obj_Link.ds_grid_terrain, (ending_x+sprite_width)/global.tile_size, (ending_y)/global.tile_size);
		starting_x = x;
		starting_y = y;
		ending_x = x+sprite_width;
		ending_y = y+sprite_height;
	
	
	for (var jj=starting_y+15; jj<ending_y+16; jj++)
	{
		for (var i=0; i<=16; i++)
		{
			if (jj-i < ending_y)
			{
				ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+i)/global.tile_size,(jj-i)/global.tile_size,lowest_val+(ending_y+16-jj));
			}
		}	
	}
	

	//Working
	var j = 0;
	for (var xx=0; xx<16*loops_x; xx++)
	{
		//Side wall corner
		for (var yy=16; yy<16*loops_y+16; yy++)
		{
			if (xx <= yy-16)
			{
				var diff = 16*loops_x-xx;
				ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(starting_y+yy)/global.tile_size,lowest_val+(((diff*2))));
			}
		}
	}


	//Find first wall
	var nearest_wall = collision_line(starting_x, starting_y, 0, starting_y, obj_wall_parent, false, true);
	
	for (var xx=nearest_wall.x; xx<ending_x; xx++)
		{
			//Set the tiles above the map, until the next wall
			for (var yy=starting_y+16; yy>=0; yy--)
				{
					if (yy >= starting_y)
					{
						for (var qq = 0; qq<16; qq++)
						{
							if(!instance_position(xx,yy-qq,obj_wall_parent))
							{
								ds_grid_set(obj_Link.ds_grid_terrain,(xx)/global.tile_size,(yy-qq)/global.tile_size,lowest_val+32);	
							}
						}
					}
					else
					{
						if (instance_position(xx,yy,obj_wall_parent))
						{
							stop_iteration = true;
							break;
						}
						else
						{
							ds_grid_set(obj_Link.ds_grid_terrain,(xx)/global.tile_size,(yy)/global.tile_size,lowest_val+32);
						}
					}
					

				}
		}
		
			for (var xx=starting_x; xx>0; xx--)
			{
				for (var yy=16; yy<16*loops_y+16; yy++)
				{
					if ((instance_position(xx,starting_y+yy,obj_wall_parent)) && (xx != starting_x))
					{
						stop_iteration = true;
						break;
					}
					else
					{
						ds_grid_set(obj_Link.ds_grid_terrain,(xx)/global.tile_size,(starting_y+yy)/global.tile_size,lowest_val+32);
					}

				}
			}	

}
}