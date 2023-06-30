if (update == true)
{
	///Items
	
	if ((global.past_x_item == -1) && (global.past_y_item == -1))
		{
			global.past_x_item = obj_pause_menu.x_menu_deku_stick;
			global.past_y_item = obj_pause_menu.y_menu_deku_stick;
		}
	
	if (current_state == struct_pause.item_select)
	{
		if (!(instance_exists(obj_pause_menu_item_cursor)))
		{
			item_menu_cursor = instance_create_depth(global.past_x_item , global.past_y_item, depth, obj_pause_menu_item_cursor);
			scr_item_cursor_helper();
		}
	}

	///Equipment
	
	if ((global.past_x_equipment == -1) && (global.past_y_equipment == -1))
		{
			global.past_x_equipment = obj_pause_menu.x_menu_kokiri_sword;
			global.past_y_equipment = obj_pause_menu.y_menu_kokiri_sword;
		}
	
	if (current_state == struct_pause.equipment_select)
	{
		if (!(instance_exists(obj_pause_menu_equipment_cursor)))
		{
			equipment_menu_cursor = instance_create_depth(global.past_x_equipment , global.past_y_equipment, depth, obj_pause_menu_equipment_cursor);
			scr_equipment_cursor_helper();
		}
	}	
	update = false;
}