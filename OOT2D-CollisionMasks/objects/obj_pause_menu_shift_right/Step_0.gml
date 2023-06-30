if (global.in_pause_menus == true)
{
	var menus_current_state = obj_pause_menu.current_state;

	if (keyboard_check(global.assigned_key_right_trigger))
	{
		if (can_rotate == true)
		{
			switch (menus_current_state)
			{
				case struct_pause.item_select:
					if (global.in_dungeon == true){obj_pause_menu.current_state = struct_pause.dungeon_map;}
					else {obj_pause_menu.current_state = struct_pause.map;}
					can_rotate = false;
					alarm[0] = 15;
					obj_pause_menu.update = true;
				break;
			
				case struct_pause.dungeon_map:
					obj_pause_menu.current_state = struct_pause.quest_status;
					can_rotate = false;
					alarm[0] = 15;
					obj_pause_menu.update = true;
				break;
			
				case struct_pause.equipment_select:
					obj_pause_menu.current_state = struct_pause.item_select;
					can_rotate = false;
					alarm[0] = 15;
					obj_pause_menu.update = true;
				break;
			
				case struct_pause.map:
					obj_pause_menu.current_state = struct_pause.quest_status;
					can_rotate = false;
					alarm[0] = 15;
					obj_pause_menu.update = true;
				break;
			
				case struct_pause.quest_status:
					obj_pause_menu.current_state = struct_pause.equipment_select;
					can_rotate = false;
					alarm[0] = 15;
					obj_pause_menu.update = true;
				break;
			
				default:
				break;
		
			}
		}
	}
}
else
{
	instance_destroy()
}

//Blue->red->yellow->green

//  Red <- Yellow <- Green <- Blue