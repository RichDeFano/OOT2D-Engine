// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_item_cursor_helper(){
	switch (global.last_item_cursor_position)
	{
		case (struct_c_button_items.deku_stick):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_deku_stick;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_deku_stick;
		break;
		
		case (struct_c_button_items.deku_nut):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_deku_nut;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_deku_nut;
		break;
		
		case (struct_c_button_items.bombs):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_bombs;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_bombs;
		break;
		
		case (struct_c_button_items.bow_and_arrow):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_bow;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_bow;
		break;
		
		case (struct_c_button_items.fire_arrow):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_fire_arrow;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_fire_arrow;
		break;
		
		case (struct_c_button_items.dins_fire):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_dins_fire;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_dins_fire;
		break;
		
		case (struct_c_button_items.fairy_slingshot):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_slingshot;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_slingshot;
		break;

		case (struct_c_button_items.sarias_ocarina):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_ocarina;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_ocarina;
		break;
		
		case (struct_c_button_items.ocarina_of_time):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_ocarina;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_ocarina;
		break;
		
		case (struct_c_button_items.bombchu):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_bombchu;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_bombchu;
		break;

		case (struct_c_button_items.hookshot):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_hookshot;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_hookshot;
		break;
		
		case (struct_c_button_items.longshot):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_hookshot;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_hookshot;
		break;
		
		case (struct_c_button_items.ice_arrow):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_ice_arrow;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_ice_arrow;
		break;
		
		case (struct_c_button_items.farores_wind):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_farores_wind;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_farores_wind;
		break;
		
		case (struct_c_button_items.boomerang):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_boomerang;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_boomerang;
		break;
		
		case (struct_c_button_items.eye_of_truth):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_eye_of_truth;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_eye_of_truth;
		break;
		
		case (struct_c_button_items.magic_beans):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_magic_beans;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_magic_beans;
		break;

		case (struct_c_button_items.megaton_hammer):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_megaton_hammer;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_megaton_hammer;
		break;
		
		case (struct_c_button_items.light_arrow):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_light_arrow;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_light_arrow;
		break;
		
		case (struct_c_button_items.nayrus_love):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_nayrus_love;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_nayrus_love;
		break;
		
		case (struct_c_button_items.bottle_1):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_bottle_1;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_bottle_1;
		break;
		
		case (struct_c_button_items.bottle_2):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_bottle_2;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_bottle_2;
		break;
		
		case (struct_c_button_items.bottle_3):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_bottle_3;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_bottle_3;
		break;
		
		case (struct_c_button_items.bottle_4):
			obj_pause_menu_item_cursor.x = obj_pause_menu.x_menu_bottle_4;
			obj_pause_menu_item_cursor.y = obj_pause_menu.y_menu_bottle_4;
		break;

	}
}