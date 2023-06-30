/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Link))
{
	if (have_created == false)
	{
		have_created = true;
		lowest_val = ds_grid_get(obj_Link.ds_grid_terrain, (starting_x+(1/2)*sprite_width)/global.tile_size, (ending_y)/global.tile_size);
		starting_x = x;
		starting_y = y;
		ending_x = x+sprite_width;
		ending_y = y+sprite_height;
	
	
	//draw in layers
	//layers per depth increase = floor(sprite_height/32)
	//Calculate the height of the 
	for (var jj=starting_y+15; jj<=ending_y; jj++)
	{
		for (var i=0; i<=16; i++)
		{
			ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+i)/global.tile_size,(jj-i)/global.tile_size,lowest_val+(ending_y-jj));
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
		
		//loop times width
		//decrease y by one, increase x by done, draw
	/*
		var j = 0;
		for (var xx=0; xx<16*loops_x; xx++)
		{
			for (var yy=0; yy<32*loops_y; yy++)
				{
					ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(ending_y-yy)/global.tile_size,lowest_val+yy);
					//lowest_val = 32;
				}
		}
		
		*/
		/*
		for (var xx=0; xx<16*loops_x; xx++)
			{
				for (var yy=starting_y; yy>=0; yy--)
				{
					if ((instance_position(starting_x+xx,yy,obj_wall_parent)) && (yy != starting_y))
					{
						stop_iteration = true;
						break;
					}
					else
					{
						ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(yy)/global.tile_size,lowest_val+32);
					}
				}
			}
			*/
	}

}