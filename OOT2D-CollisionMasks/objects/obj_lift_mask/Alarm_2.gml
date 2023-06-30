/// @description Insert description here
// You can write your code in this editor

in_air = false;
in_air_left = false;
in_air_right = false;
in_air_up = false;
in_air_down = false;
selected = false;
tick_counter = 0;
draw_x = x;
draw_y = y;
world_depth = ds_grid_get(obj_Link.ds_grid_terrain,x/global.tile_size,y/global.tile_size);
throw_depth = world_depth;
	obj_Link.setting = false;
	obj_Link.set_right = false;
	obj_Link.set_left = false;
	obj_Link.set_up = false;
	obj_Link.set_down = false;
	obj_Link.holding = false;
	obj_Link.pick_up = false;
	obj_Link.throwing = false;
	obj_Link.throw_up = false;
	obj_Link.throw_down = false;
	obj_Link.throw_right = false;
	obj_Link.throw_left = false;
	obj_Link.lifted_throw = false;
	obj_Link.lifted_set = false;
	obj_Link.can_lift_set = false;
	obj_Link.can_lift_throw = false;
	obj_Link.stop_lift = false;

world_depth = ds_grid_get(obj_Link.ds_grid_terrain,x/global.tile_size,y/global.tile_size);
