// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_equipment_cursor_helper(){
	switch (global.last_equipment_cursor_position){
		case (struct_equipment.kokiri_sword):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_kokiri_sword;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_kokiri_sword;
		break;
		
		case (struct_equipment.master_sword):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_master_sword;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_master_sword;
		break;
		
		case (struct_equipment.biggoron_sword):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_biggoron_sword;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_biggoron_sword;
		break;

		case (struct_equipment.deku_shield):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_deku_shield;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_deku_shield;
		break;

		case (struct_equipment.hylian_shield):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_deku_shield;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_deku_shield;
		break;
		
		case (struct_equipment.mirror_shield):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_mirror_shield;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_mirror_shield;
		break;
		
		case (struct_equipment.kokiri_tunic):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_kokiri_tunic;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_kokiri_tunic;
		break;
		
		case (struct_equipment.goron_tunic):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_goron_tunic;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_goron_tunic;
		break;
		
		case (struct_equipment.zora_tunic):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_zora_tunic;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_zora_tunic;
		break;
		
		case (struct_equipment.boots):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_kokiri_boots;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_kokiri_boots;
		break;
		
		case (struct_equipment.iron_boots):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_iron_boots;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_iron_boots;
		break;
		
		case (struct_equipment.hover_boots):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_hover_boots;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_hover_boots;
		break;
		
		case (struct_equipment.seed_pouch_1):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_1;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_1;
		break;
		
		case (struct_equipment.seed_pouch_2):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_1;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_1;
		break;

		case (struct_equipment.seed_pouch_3):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_1;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_1;
		break;

		case (struct_equipment.quiver_1):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_1;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_1;
		break;
		
		case (struct_equipment.quiver_2):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_1;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_1;
		break;
		
		case (struct_equipment.quiver_3):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_1;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_1;
		break;


		case (struct_equipment.bomb_bag_1):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_2;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_2;
		break;
		
		case (struct_equipment.bomb_bag_2):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_2;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_2;
		break;
		
		case (struct_equipment.bomb_bag_3):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_2;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_2;
		break;
		
		case (struct_equipment.goron_bracelet):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_3;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_3;
		break;
		
		case (struct_equipment.silver_gauntlets):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_3;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_3;
		break;
		
		case (struct_equipment.golden_gauntlets):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_3;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_3;
		break;
		
		case (struct_equipment.zora_scale):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_4;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_4;
		break;
		
		case (struct_equipment.green_zora_scale):
			obj_pause_menu_equipment_cursor.x = obj_pause_menu.x_menu_nook_4;
			obj_pause_menu_equipment_cursor.y = obj_pause_menu.y_menu_nook_4;
		break;

	}
}