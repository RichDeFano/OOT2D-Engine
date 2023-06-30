scr_magnet_items();

if (distance_to_object(obj_Link) < 8)
{
	if ((global.max_hp-global.current_hp) < 4) {global.current_hp += (global.max_hp-global.current_hp);}
	else {global.current_hp += 4}
	obj_links_movement_alarms.alarm[2] = 50;
	obj_links_movement_alarms.draw_heart_get = true;
	instance_destroy()
}