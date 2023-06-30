/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Link))
{
	if (have_created == false)
	{
		have_created = true;
		lowest_val = ds_grid_get(obj_Link.ds_grid_terrain, (starting_x-4)/global.tile_size, (starting_y+(1/2)*sprite_height)/global.tile_size);
		starting_x = x;
		starting_y = y;
		ending_x = x+sprite_width;
		ending_y = y+sprite_height;

		var j = 0;
		for (var xx=0; xx<16*loops_x; xx++)
		{
			for (var yy=0; yy<16*loops_y; yy++)
			{
				ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(starting_y+yy)/global.tile_size,lowest_val+(xx*2));
				//lowest_val = 32;
			}
		}
		
		for (var xx=0; xx<room_width; xx++)
			{
				for (var yy=0; yy<16*loops_y; yy++)
				{
					if (instance_position(ending_x+xx,starting_y+yy,obj_wall_parent))
					{
						stop_iteration = true;
						break;
					}
					else
					{
						ds_grid_set(obj_Link.ds_grid_terrain,(ending_x+xx)/global.tile_size,(starting_y+yy)/global.tile_size,lowest_val+32);
					}

				}
				if (stop_iteration == true){break;}
			}
	}
	//owest_val = ds_grid_set(obj_Link.ds_grid_terrain, (ending_x-8)/global.tile_size, (ending_y-5)/global.tile_size,32);
	//lowest_val = ds_grid_get(obj_Link.ds_grid_terrain, (ending_x-8)/global.tile_size, (ending_y-5)/global.tile_size);
}