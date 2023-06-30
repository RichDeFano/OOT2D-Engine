/// @description Insert description here
// You can write your code in this editor
flow_direction = 270;
flow_speed = 1;
flow_quantity = 10;

flow_height =  ((1/10)*flow_quantity) + ds_grid_get(obj_Link.ds_grid_terrain,x/global.tile_size,y/global.tile_size);