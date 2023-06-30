// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_initialize_link_global_vars(){
	global.equipped_kokiri_sword = false;
	global.equipped_master_sword = false;
	global.equipped_biggoron_sword = false;
	global.equipped_kokiri_shield = true;
	global.equipped_hylian_shield = false;
	global.equipped_mirror_shield = false;
	global.equipped_kokiri_boots = true;
	global.equipped_hover_boots = false;
	global.equipped_iron_boots = false;
	global.equipped_kokiri_tunic = true;
	global.equipped_goron_tunic = false;
	global.equipped_zora_tunic = false;
	
	
	global.in_pause_menus = false;
	global.in_dungeon = false;
	global.is_child = true;
	
	global.max_magic = 0;
	if ((global.unlocked_magic_meter == true) && (global.unlocked_magic_meter_2 == false)){global.max_magic = 48;}
	else if (global.unlocked_magic_meter_2 == true){global.max_magic = 96;}
	
	global.assigned_value_c_button_left = struct_c_button_items.null;
	global.assigned_value_c_button_right = struct_c_button_items.null;
	global.assigned_value_c_button_down = struct_c_button_items.null
	
	global.past_x_item = -1;
	global.past_y_item = -1;
	global.past_x_equipment = -1;
	global.past_y_equipment = -1;
	global.last_equipment_cursor_position = struct_equipment.kokiri_sword;
	global.last_item_cursor_position = struct_c_button_items.deku_stick;
	global.last_pause_screen = struct_pause.item_select;
	global.tile_size = 1;
	

}