// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_magnet_items(){
	var dis = distance_to_object(obj_Link);
	if (dis > 40) {vspeed = 0; hspeed = 0;}
	if ((dis < 40) && (dis >= 30)){move_towards_point(obj_Link.x, obj_Link.y, 1);}
	else if ((dis < 30) && (dis >= 20)){move_towards_point(obj_Link.x, obj_Link.y, 2);}
	else if ((dis < 20) && (dis >= 10)){move_towards_point(obj_Link.x, obj_Link.y, 3);}
	else if ((dis < 10) && (dis >= 5)){move_towards_point(obj_Link.x, obj_Link.y, 4);}
	else if (dis < 5){ x = obj_Link.x; y = obj_Link.y;}
	
}