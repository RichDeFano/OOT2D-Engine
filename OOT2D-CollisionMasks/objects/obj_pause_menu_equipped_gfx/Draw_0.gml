
if (obj_pause_menu.current_state == struct_pause.equipment_select)
{
	if (global.equipped_kokiri_boots == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_kokiri_boots, obj_pause_menu.y_menu_kokiri_boots);}
	if (global.equipped_iron_boots == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_iron_boots, obj_pause_menu.y_menu_iron_boots);}
	if (global.equipped_hover_boots == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_hover_boots, obj_pause_menu.y_menu_hover_boots);}

	if (global.equipped_kokiri_tunic == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_kokiri_tunic, obj_pause_menu.y_menu_kokiri_tunic);}
	if (global.equipped_goron_tunic == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_goron_tunic, obj_pause_menu.y_menu_goron_tunic);}
	if (global.equipped_zora_tunic == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_zora_tunic, obj_pause_menu.y_menu_zora_tunic);}

	if (global.equipped_kokiri_shield == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_deku_shield, obj_pause_menu.y_menu_deku_shield);}
	if (global.equipped_hylian_shield == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_hylian_shield, obj_pause_menu.y_menu_hylian_shield);}
	if (global.equipped_mirror_shield == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_mirror_shield, obj_pause_menu.y_menu_mirror_shield);}

	if (global.equipped_kokiri_sword == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_kokiri_sword, obj_pause_menu.y_menu_kokiri_sword);}
	if (global.equipped_master_sword == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_master_sword, obj_pause_menu.y_menu_master_sword);}
	if (global.equipped_biggoron_sword == true){draw_sprite(spr_equipment_equipped, 0, obj_pause_menu.x_menu_biggoron_sword, obj_pause_menu.y_menu_biggoron_sword);}
}