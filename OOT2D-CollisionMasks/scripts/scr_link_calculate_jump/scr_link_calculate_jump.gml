// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_calculate_jump(){
	var tile_increment = 8;
	var check_x = floor(x/global.tile_size) * global.tile_size;
	var check_y = floor(y/global.tile_size) * global.tile_size;
#region Calculate Best Jump Spot	
	if ((sprite_index == spr_right) && (place_meeting(x+tile_increment,y,obj_wall_parent)))
	{
		link_depth = ds_grid_get(ds_grid_terrain,x/global.tile_size,y/global.tile_size);
		draw_sprite(spr_jump_complete, 2, check_x, check_y);
		can_jump_right = true;
		while (position_meeting(check_x+tile_increment, check_y, obj_wall_parent))
		{
			draw_sprite(spr_jump_complete, 1, check_x, check_y);
			check_x = check_x + tile_increment;
		}
		draw_sprite(spr_jump_complete, 1, check_x, check_y);
		check_x = check_x + tile_increment;
		
		if !(position_meeting(check_x+tile_increment, check_y, obj_wall_parent))
		{
			var target_depth_val = ds_grid_get(ds_grid_terrain,((check_x+tile_increment)/global.tile_size),(check_y/global.tile_size));
		link_depth = ds_grid_get(ds_grid_terrain,x/global.tile_size,y/global.tile_size);
			draw_text(x,y+20, target_depth_val)
			if (link_depth > target_depth_val)
			{
				draw_sprite(spr_jump_complete, 0, check_x, check_y);
				draw_line(x,y,check_x,check_y);
				jumping = true;
			}
			else if (link_depth < target_depth_val)
			{
				draw_sprite(spr_jump_complete, 3, check_x, check_y);
			}
			else
			{
				draw_sprite(spr_jump_complete, 1, check_x, check_y);
			}
		}
		
	}

	if ((sprite_index == spr_left) && (place_meeting(x-tile_increment,y,obj_wall_parent)))
	{
		link_depth = ds_grid_get(ds_grid_terrain,x/global.tile_size,y/global.tile_size);
		draw_sprite(spr_jump_complete, 2, check_x, check_y);
		
		can_jump_left = true;
		while (position_meeting(check_x-tile_increment, check_y, obj_wall_parent))
		{
			draw_sprite(spr_jump_complete, 1, check_x, check_y);
			check_x = check_x - tile_increment;
		}
		draw_sprite(spr_jump_complete, 1, check_x, check_y);
		check_x = check_x - tile_increment;
		if !(position_meeting(check_x-tile_increment, check_y, obj_wall_parent))
		{
			var target_depth_val = ds_grid_get(ds_grid_terrain,((check_x+tile_increment)/global.tile_size),(check_y/global.tile_size));
		
			draw_text(x,y+20, target_depth_val)
			if (link_depth > target_depth_val)
			{
				draw_sprite(spr_jump_complete, 0, check_x, check_y);
				jumping = true;
			}
			else if (link_depth < target_depth_val)
			{
				draw_sprite(spr_jump_complete, 3, check_x, check_y);
			}
			else
			{
				draw_sprite(spr_jump_complete, 1, check_x, check_y);
			}
		
		}
	}
	
	if ((sprite_index == spr_up) && (place_meeting(x,y-tile_increment,obj_wall_parent)))
	{
		link_depth = ds_grid_get(ds_grid_terrain,x/global.tile_size,y/global.tile_size);
		draw_sprite(spr_jump_complete, 2, check_x, check_y);
		can_jump_up = true;
		while (position_meeting(check_x, check_y-tile_increment, obj_wall_parent))
		{
			draw_sprite(spr_jump_complete, 1, check_x, check_y);
			check_y = check_y - tile_increment;
		}
		draw_sprite(spr_jump_complete, 1, check_x, check_y);
		check_y = check_y - tile_increment;
		
		if !(position_meeting(check_x, check_y-tile_increment, obj_wall_parent))
		{
			var target_depth_val = ds_grid_get(ds_grid_terrain,((check_x+tile_increment)/global.tile_size),(check_y/global.tile_size));
		
			draw_text(x,y+20, target_depth_val)
			if (link_depth > target_depth_val)
			{
				draw_sprite(spr_jump_complete, 0, check_x, check_y);
				draw_line(x,y,check_x,check_y);
				jumping = true;
			}
			else if (link_depth < target_depth_val)
			{
				draw_sprite(spr_jump_complete, 3, check_x, check_y);
			}
			else
			{
				draw_sprite(spr_jump_complete, 1, check_x, check_y);
			}		
		}
	}
	
	if ((sprite_index == spr_down) && (place_meeting(x,y+tile_increment,obj_wall_parent)))
	{
		link_depth = ds_grid_get(ds_grid_terrain,x/global.tile_size,y/global.tile_size);
		check_y = check_y + tile_increment;
		draw_sprite(spr_jump_complete, 2, check_x, check_y);
		can_jump_down = true;
		while (position_meeting(check_x, check_y+8, obj_wall_parent))
		{
			draw_sprite(spr_jump_complete, 1, check_x, check_y);
			check_y = check_y + tile_increment;
		}
		draw_sprite(spr_jump_complete, 1, check_x, check_y);
		check_y = check_y + tile_increment;
		
		if !(position_meeting(check_x, check_y+8, obj_wall_parent))
		{
		var target_depth_val = ds_grid_get(ds_grid_terrain,((check_x+tile_increment)/global.tile_size),(check_y/global.tile_size));
		
			draw_text(x,y+20, target_depth_val)
			if (link_depth > target_depth_val)
			{
				draw_sprite(spr_jump_complete, 0, check_x, check_y);
				draw_line(x,y,check_x,check_y);
				jumping = true;
			}
			else if (link_depth < target_depth_val)
			{
				draw_sprite(spr_jump_complete, 3, check_x, check_y);
			}
			else
			{
				draw_sprite(spr_jump_complete, 1, check_x, check_y);
			}		
		}
	}
#endregion


}