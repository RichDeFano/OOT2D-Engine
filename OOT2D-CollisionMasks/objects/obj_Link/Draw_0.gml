///Draw With Palette Swap     
pal_swap_set(spr_link_tunic_pal, current_pal, false);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
pal_swap_reset();
//draw_text(x,y,current_pal);



var x_val = scr_viewport_wrapper(struct_view.XView, 0) + 100;
var y_val = scr_viewport_wrapper(struct_view.YView, 0) + 225;
var string_current_state = scr_player_state_to_string(current_state);
draw_text(x_val, y_val, "STATE: " + string_current_state);
if (draw_terrain_grid == true)
{
	if (!surface_exists(surf_depthmap))
	{
		surf_depthmap = surface_create(room_width,room_height);
		surface_set_target(surf_depthmap);
		if (update_terrain == true)
		{
			var tile_numb_x = room_width/global.tile_size;
			var tile_numb_y = room_height/global.tile_size;
			//ds_grid_terrain = ds_grid_create(tile_numb_x, tile_numb_y);
			for (var i = 0; i < tile_numb_x; i++)
			{
				for (var j = 0; j < tile_numb_y; j++)
				{	
					var depth_val = ds_grid_get(ds_grid_terrain,i,j);
					var color_depth_val = 255-depth_val;
					//if depth_val = (255+999){depth_val=0;}
					if (depth_val > 0)
					{
						col_grayscale = make_color_rgb(color_depth_val,color_depth_val,color_depth_val);
						draw_point_color(i,j,col_grayscale);
					}
					else
					{
						//col_grayscale = make_color_rgb(color_depth_val,color_depth_val,color_depth_val);
						//draw_point_color(i,j,col_grayscale);
						/*
							var right_depth = ds_grid_get(ds_grid_terrain,i+1,j);
							var left_depth = ds_grid_get(ds_grid_terrain,i-1,j);
							var up_depth = ds_grid_get(ds_grid_terrain,i,j-1);
							var down_depth = ds_grid_get(ds_grid_terrain,i,j+1);
							
							if (depth_val < right_depth) {depth_val = right_depth;}
							if (depth_val < left_depth) {depth_val = left_depth;}
							if (depth_val < up_depth){depth_val = up_depth;}
							if (depth_val < down_depth){depth_val = down_depth;}
							
								ds_grid_set(ds_grid_terrain,i,j,depth_val);
								color_depth_val = 255-depth_val;
								col_grayscale = make_color_rgb(color_depth_val,color_depth_val,color_depth_val);
								draw_point_color(i,j,col_grayscale);
								*/
						
					}
				}
				}
			}
			update_terrain = false;
			surface_reset_target();
		}
		

	//surface_set_target(surf_depthmap);
		//draw_clear_alpha(c_white,1.0);
		//shader_set(shdr_depthmap)
		
		//shader_reset();
	//surface_reset_target();
	draw_set_alpha(0.75);
	shader_set(shdr_depthmap)
		draw_surface(surf_depthmap,0,0);
	shader_reset();
	draw_set_alpha(1);

}
	
	
/*
//draw_text(75,75,"Put Away Speak Enter Throw Jump Open Attack");
if (draw_terrain_grid == true)
{
#region Height Maps
	var tile_numb_x = room_width/global.tile_size;
	var tile_numb_y = room_height/global.tile_size;
	//ds_grid_terrain = ds_grid_create(tile_numb_x, tile_numb_y);
	for (var i = 0; i < tile_numb_x; i++)
	{
		for (var j = 0; j < tile_numb_y; j++)
		{	
			var depth_val = ds_grid_get(ds_grid_terrain,i,j);
			current_val = depth_val*3;
			var temp_color = make_colour_hsv(current_val, 100, 50);
			//draw_rectangle(i*16,j*16, (i*16)+16, (j*16)+16,false);
			draw_set_alpha(0.75)
			draw_rectangle_color(i*global.tile_size, j*global.tile_size, ((i*global.tile_size)+(global.tile_size-1)), ((j*global.tile_size)+(global.tile_size-1)),temp_color, temp_color, temp_color, temp_color, false);
			draw_set_alpha(1);
			//draw_sprite(sprLNumber,depth_val,(i*16)+8, (j*16)+8)
			//draw_text((i*16) + 2,(j*16),depth_val);
			//ds_grid_set(ds_grid_terrain, i, j, 1);
		}
	}
#endregion
}
*/
//link_depth = ds_grid_get(ds_grid_terrain,x/global.tile_size,y/global.tile_size);
draw_text(x_val, y_val-16, "DEPTH: " + string(link_depth));


scr_link_calculate_jump();
#region Jump Shadow
if (jumping == true)
{
for(var i = 0; i < position_array_size; i += 1)
{
	if (jumping_tick_counter == i)
	{	
		var position_x = jumping_tick_counter*global.tile_size;
		var position_y = position_array[0];
		var height_scaling = position_array[0]/position_array[jumping_tick_counter];
		/*if (jumping_right == true)
		{
			draw_sprite_ext(spr_shadow,0,draw_x+position_x,(draw_y-position_y)+(2*global.tile_size),1/(link_depth-world_depth),1/(link_depth-world_depth),0,0,0.75);
		}
		else if (jumping_left == true)
		{
			draw_sprite_ext(spr_shadow,0,draw_x-position_x,(draw_y-position_y)+(2*global.tile_size),1/(link_depth-world_depth),1/(link_depth-world_depth),0,0,0.75);
		}
		*/

	}
	
	var position_x2 = i*global.tile_size;
	var position_y2 = position_array[i];
	draw_circle(draw_x+position_x2, draw_y-position_y2,2,true);
	
}
}
#endregion
