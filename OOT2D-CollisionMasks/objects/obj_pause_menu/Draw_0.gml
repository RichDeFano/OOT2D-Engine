
if (global.in_pause_menus == true)
{
	if (current_state == struct_pause.item_select)
	{
		if (!(instance_exists(obj_pause_menu_item_cursor)))
		{
			item_menu_cursor = instance_create_depth(global.past_x_item , global.past_y_item, depth, obj_pause_menu_item_cursor);
			scr_item_cursor_helper();
		}
			draw_sprite(spr_menu_screen, 0, x_menu_main, y_menu_main);
			//draw_sprite(spr_menu_cursor, 0, obj_pause_menu_item_cursor.x, obj_pause_menu_item_cursor.y);
			scr_pause_item_select_step();
		
	}
	else if (current_state == struct_pause.equipment_select)
	{
		if (!(instance_exists(obj_pause_menu_equipment_cursor)))
		{
			equipment_menu_cursor = instance_create_depth(global.past_x_equipment , global.past_y_equipment, depth, obj_pause_menu_equipment_cursor);
			scr_equipment_cursor_helper();
		}
		draw_sprite(spr_menu_screen, 1, x_menu_main, y_menu_main);
		scr_pause_equipment_select_step();
	}
	else if (current_state == struct_pause.dungeon_map)
	{
		draw_sprite(spr_menu_screen, 4, x_menu_main, y_menu_main);
	}
	else if (current_state == struct_pause.map)
	{
		draw_sprite(spr_menu_screen, 3, x_menu_main, y_menu_main);
	}
	else if (current_state == struct_pause.quest_status)
	{
		draw_sprite(spr_menu_screen, 2, x_menu_main, y_menu_main);
		scr_pause_quest_select_step();
	}
	else if (current_state == struct_pause.save)
	{
		draw_sprite(spr_menu_screen, 5, x_menu_main, y_menu_main);
	}

	draw_sprite(spr_menu_hint,0,x,y);
	draw_sprite(spr_menu_left_screen, 0, x_menu_left_change, y_menu_left_change);
	draw_sprite(spr_menu_right_screen, 0, x_menu_right_change, y_menu_right_change);
}
