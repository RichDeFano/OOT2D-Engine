/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Link))
{
	if (have_created == false)
	{
		have_created = true;
		lowest_val = ds_grid_get(obj_Link.ds_grid_terrain, (ending_x+4)/global.tile_size, (starting_y+(1/2)*sprite_height)/global.tile_size);
		starting_x = x;
		starting_y = y;
		ending_x = x+sprite_width;
		ending_y = y+sprite_height;
	
	
		var j = 0;
		for (var xx=0; xx<16*loops_x; xx++)
		{
			for (var yy=0; yy<16*loops_y; yy++)
			{
				ds_grid_set(obj_Link.ds_grid_terrain,(ending_x-xx)/global.tile_size,(starting_y+yy)/global.tile_size,lowest_val+(xx*2));
			}
		}
		
		for (var xx=starting_x; xx>0; xx--)
			{
				for (var yy=0; yy<16*loops_y; yy++)
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