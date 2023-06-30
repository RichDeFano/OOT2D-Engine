/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_Link))
{
	if (have_created == false)
	{
		have_created = true;
		lowest_val = ds_grid_get(obj_Link.ds_grid_terrain, (starting_x+(1/2)*sprite_width)/global.tile_size, (starting_y-4)/global.tile_size);
		starting_x = x;
		starting_y = y;
		ending_x = x+sprite_width;
		ending_y = y+sprite_height;
	
		var j = 0;
		for (var xx=0; xx<16*loops_x; xx++)
		{
			for (var yy=0; yy<16*loops_y; yy++)
				{
					ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(starting_y+yy)/global.tile_size,lowest_val+yy);
					//Set Tiles Above Depth
				}
		}


			for (var xx=0; xx<16*loops_x; xx++)
			{
				for (var yy=ending_y; yy<room_height; yy++)
				{
					ds_grid_set(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(yy)/global.tile_size,lowest_val+32);
					if (instance_position(starting_x+xx,yy,obj_wall_parent))
					{
						stop_iteration = true;
						break;
					}

				}
			}

		/*
		for (var qq=(y+sprite_height); qq=(room_height-(y+sprite_height)); q=q+16;)
			{
				var depth_val = lowest_val+(16*loops_y);//ds_grid_get(obj_Link.ds_grid_terrain,(starting_x+xx)/global.tile_size,(starting_y+yy)/global.tile_size);
				var next_val = ds_grid_get(obj_Link.ds_grid_terrain,(starting_x)/global.tile_size,(qq)/global.tile_size);
				if (next_val == 0){ds_grid_set(obj_Link.ds_grid_terrain,(starting_x)/global.tile_size,(qq)/global.tile_size,depth_val);}
			}
		*/
	}

}