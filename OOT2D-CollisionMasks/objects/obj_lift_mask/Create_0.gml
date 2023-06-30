toggled = false;
in_air = false;
in_air_up = false;
in_air_down = false;
in_air_left = false;
in_air_right = false;
selected = false;

tick_counter = 0;

draw_x = 0;
draw_y = 0;
position_array_size = 26;
position_array = array_create(position_array_size,0);
world_depth = ds_grid_get(obj_Link.ds_grid_terrain,x/global.tile_size,y/global.tile_size);
throw_depth = world_depth;

#region Parabola
	fast = 10;
	angle = 75;
	gra = .30;
#endregion
/*
h = -16t2 + vt + s;
s = height
t = time in air
v = velocity

initial_vertical_velocity = 1;


fast = 20;