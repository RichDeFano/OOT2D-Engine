// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_parabola_throw(){
	var current_x = argument0;
	var object_speed = argument1;
	var angle_rads = degtorad(argument2)
	var starting_x = argument3;
	var starting_y = argument4;
	var gravity_const = argument5;
	
	var position_y = 0;
	if ((cos(angle_rads) != 0) && (object_speed != 0))
	{
		position_y = -(gravity_const/2)*(sqr(current_x-starting_x) / (sqr(object_speed)*sqr(cos(angle_rads))))+tan(angle_rads)*(current_x-starting_x)+starting_y;
	}
	else
	{
		position_y = 0;
	}
	return position_y/8;
}