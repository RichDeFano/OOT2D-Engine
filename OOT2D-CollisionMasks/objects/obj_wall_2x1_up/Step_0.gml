/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Link))
{
	if (have_created == false)
	{
		have_created = true;
		lowest_val = ds_grid_get(obj_Link.ds_grid_terrain, (starting_x+(1/2)*sprite_width)/global.tile_size, (ending_y+4)/global.tile_size);
		starting_x = x;
		starting_y = y;
		ending_x = x+sprite_width;
		ending_y = y+sprite_height;
	
		var j = 0;
		for (var xx=0; xx<16*loops_x; xx++)
		{
			//Set the tiles on the map
			for (var yy=0; yy<32*loops_y; yy++)
				{
					ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(ending_y-yy)/global.tile_size,lowest_val+yy);
					//lowest_val = 32;
				}
				
			//Set the tiles above the map, until the next wall
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
		

	}

}