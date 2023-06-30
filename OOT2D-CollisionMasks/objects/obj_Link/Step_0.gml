scr_link_step();
world_depth = ds_grid_get(obj_Link.ds_grid_terrain,x/global.tile_size,y/global.tile_size);
link_depth = ds_grid_get(obj_Link.ds_grid_terrain,x/global.tile_size,y/global.tile_size);
if (jumping == false)
{
	draw_x = x;
	draw_y = y;		
}