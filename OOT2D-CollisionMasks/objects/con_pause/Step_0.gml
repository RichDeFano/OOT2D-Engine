if keyboard_check_released(global.assigned_key_start)
{
	if ((global.in_pause_menus == false) && (alarm[0] <= 0))
	{
		alarm[0] = 5;
		global.in_pause_menus = true;
		pause_stall = true;
		instance_create_depth(0,0,depth,obj_pause_menu);
	}
	else if ((global.in_pause_menus == true) && (alarm[0] <= 0))
	{
		alarm[0] = 5;
		global.in_pause_menus = false;
		pause_stall = true;
		instance_destroy(obj_pause_menu);
	}
}