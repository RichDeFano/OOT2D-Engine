scr_magnet_items();

if (distance_to_object(obj_Link) < 8)
{
	obj_Link.slow_magic_gain_10 = true;
	obj_links_movement_alarms.alarm[2] = 50;
	obj_links_movement_alarms.draw_magic_small_get = true;
	instance_destroy()
}