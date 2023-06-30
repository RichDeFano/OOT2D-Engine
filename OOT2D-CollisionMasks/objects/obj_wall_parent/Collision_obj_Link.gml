/*
var x_spd = obj_Link.current_xspeed;
var y_spd = obj_Link.current_yspeed;
if (solid == true) //&& (this.depth >= link.depth
{
	obj_Link.x += (place_empty(obj_Link.x+4,obj_Link.y)*keyboard_check(global.assigned_key_right) - place_empty(obj_Link.x-4,obj_Link.y)*keyboard_check(global.assigned_key_left) )*4;
	obj_Link.y += (place_empty(obj_Link.x,obj_Link.y+4)*keyboard_check(global.assigned_key_down) - place_empty(obj_Link.x,obj_Link.y-4)*keyboard_check(global.assigned_key_up) )*4;
}
*/
object_depth = ds_grid_get(obj_Link.ds_grid_terrain,x/global.tile_size,y/global.tile_size);
if (object_depth >= obj_Link.link_depth-1){solid = true;}
else {solid = false;}