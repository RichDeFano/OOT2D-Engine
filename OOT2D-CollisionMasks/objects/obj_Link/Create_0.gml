//palette
current_pal = 1;
pal_swap_init_system(shdr_pal_swapper);



//Local Variables
//scr_consumable_unlocks();
//scr_equipment_unlocks();
//scr_initialize_link_global_vars();
scr_initialize_link_local_vars();
scr_link_controls();
scr_initialize_link_gfx();

//Children
links_movement_alarms_child = instance_create_layer(x,y,"Link",obj_links_movement_alarms);
links_item_alarms_child = instance_create_layer(x,y,"Link",obj_links_item_alarms);
links_equipment_alarms_child = instance_create_layer(x,y,"Link",obj_links_equipment_alarms);
links_water_splash = instance_create_depth(x,y,obj_Link.depth-1,obj_water_splash);
//HP/Magic gain
slow_hearts_gain_all = false;
slow_hearts_gain_8 = false;
slow_hearts_gain_5 = false;
slow_magic_gain_all = false;
slow_magic_gain_10 = false;
slow_magic_gain_20 = false;
slow_magic_10_counter = 0;
slow_magic_20_counter = 0;
slow_hearts_8_counter = 0;
slow_hearts_5_counter = 0;


//Height Maps
draw_terrain_grid = false;
link_depth = 0;
#region Jumping
	fast = 4;
	angle = 75;
	gra = .30;
	position_array_size = 32;
	position_array = array_create(position_array_size,0);
	draw_x = 0;
	draw_y = 0;
#endregion
#region Height Maps
	var tile_numb_x = room_width/global.tile_size;
	var tile_numb_y = room_height/global.tile_size;
	ds_grid_terrain = ds_grid_create(tile_numb_x, tile_numb_y);
	surf_depthmap = -1
	update_terrain = true;
	for (var i = 0; i < tile_numb_x; i++)
	{
		for (var j = 0; j < tile_numb_y; j++)
		{
			//var terrain = instance_position(i*global.tile_size, j*global.tile_size,obj_terrain_height_zero);
			/*var terrain2 = instance_position(i*global.tile_size, j*global.tile_size,obj_terrain_height_one);
			var terrain3 = instance_position(i*global.tile_size, j*global.tile_size,obj_terrain_height_two);
			var terrain4 = instance_position(i*global.tile_size, j*global.tile_size,obj_terrain_height_three);
			var terrain5 = instance_position(i*global.tile_size, j*global.tile_size,obj_terrain_height_four);
			if (terrain2 != noone){terrain = terrain2;}
			if (terrain3 != noone){terrain = terrain3;}
			if (terrain4 != noone){terrain = terrain4;}
			if (terrain5 != noone){terrain = terrain5;}
			*/
			
			//if (terrain != noone)
			//{
			//	var depth_val = 0;//terrain.terrain_depth;
			//	ds_grid_set(ds_grid_terrain, i, j, depth_val);
			//}
			//else
			//{
				ds_grid_set(ds_grid_terrain, i, j, 0);
			//}
		}
	}
#endregion
