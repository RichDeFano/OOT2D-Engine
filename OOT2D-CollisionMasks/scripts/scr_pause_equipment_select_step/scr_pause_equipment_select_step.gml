// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pause_equipment_select_step(){
	//if (global.unlocked_deku_stick == true) {draw_sprite(spr_c_button_items, struct_c_button_items.deku_stick, x_menu_deku_stick, y_menu_deku_stick);}
#region Draw Available Equipment	
	//Nook 1 - Seed Pouch/Quiver
	if (global.is_child == true)
	{
		if ((global.unlocked_deku_seeds_bag_1 == true) && (global.unlocked_deku_seeds_bag_2 == false) && (global.unlocked_deku_seeds_bag_3 == false))
			{draw_sprite(spr_equipment_upgrades, struct_equipment.seed_pouch_1, x_menu_nook_1, y_menu_nook_1);}
		else if ((global.unlocked_deku_seeds_bag_1 == true) && (global.unlocked_deku_seeds_bag_2 == true) && (global.unlocked_deku_seeds_bag_3 == false))
			{draw_sprite(spr_equipment_upgrades, struct_equipment.seed_pouch_2, x_menu_nook_1, y_menu_nook_1);}
		else if ((global.unlocked_deku_seeds_bag_1 == true) && (global.unlocked_deku_seeds_bag_2 == true) && (global.unlocked_deku_seeds_bag_3 == true))
			{draw_sprite(spr_equipment_upgrades, struct_equipment.seed_pouch_3, x_menu_nook_1, y_menu_nook_1);}
	}
	else
	{
		if ((global.unlocked_quiver_1 == true) && (global.unlocked_quiver_2 == false) && (global.unlocked_quiver_3 == false))
			{draw_sprite(spr_equipment_upgrades, struct_equipment.quiver_1, x_menu_nook_1, y_menu_nook_1);}
		else if ((global.unlocked_quiver_1 == true) && (global.unlocked_quiver_2 == true) && (global.unlocked_quiver_3 == false))
			{draw_sprite(spr_equipment_upgrades, struct_equipment.quiver_2, x_menu_nook_1, y_menu_nook_1);}
		else if ((global.unlocked_quiver_1 == true) && (global.unlocked_quiver_2 == true) && (global.unlocked_quiver_3 == true))
			{draw_sprite(spr_equipment_upgrades, struct_equipment.quiver_3, x_menu_nook_1, y_menu_nook_1);}
	}

	//Nook 2 - Bombs
	if ((global.unlocked_bomb_bag_1 == true) && (global.unlocked_bomb_bag_2 == false) && (global.unlocked_bomb_bag_3 == false))
		{draw_sprite(spr_equipment_upgrades, struct_equipment.bomb_bag_1, x_menu_nook_2, y_menu_nook_2);}
	else if ((global.unlocked_bomb_bag_1 == true) && (global.unlocked_bomb_bag_2 == true) && (global.unlocked_bomb_bag_3 == false))
		{draw_sprite(spr_equipment_upgrades, struct_equipment.bomb_bag_2, x_menu_nook_2, y_menu_nook_2);}
	else if ((global.unlocked_bomb_bag_1 == true) && (global.unlocked_bomb_bag_2 == true) && (global.unlocked_bomb_bag_3 == true))
		{draw_sprite(spr_equipment_upgrades, struct_equipment.bomb_bag_3, x_menu_nook_2, y_menu_nook_2);}
		
	//Nook 3 - Bracelet
	if (global.is_child == true)
	{
		if (global.unlocked_goron_bracelet == true)	{draw_sprite(spr_equipment_upgrades, struct_equipment.goron_bracelet, x_menu_nook_3, y_menu_nook_3);}
	}
	else
	{
		if ((global.unlocked_silver_gauntlets == true) && (global.unlocked_golden_gauntlets == false))	
			{draw_sprite(spr_equipment_upgrades, struct_equipment.silver_gauntlets, x_menu_nook_3, y_menu_nook_3);}
		else if ((global.unlocked_silver_gauntlets == true) && (global.unlocked_golden_gauntlets == true))	
			{draw_sprite(spr_equipment_upgrades, struct_equipment.golden_gauntlets, x_menu_nook_3, y_menu_nook_3);}
	}
	
	//Nook 4 - Scale
	if ((global.unlocked_silver_scale == true) && (global.unlocked_golden_scale == false))
		{draw_sprite(spr_equipment_upgrades, struct_equipment.zora_scale, x_menu_nook_4, y_menu_nook_4);}
	else if ((global.unlocked_silver_scale == true) && (global.unlocked_golden_scale == false))
		{draw_sprite(spr_equipment_upgrades, struct_equipment.green_zora_scale, x_menu_nook_4, y_menu_nook_4);}
		
	//Row 1 - Swords
	if (global.unlocked_kokiri_sword == true)	{draw_sprite(spr_equipment_upgrades, struct_equipment.kokiri_sword, x_menu_kokiri_sword, y_menu_kokiri_sword);}
	if (global.unlocked_master_sword == true)	{draw_sprite(spr_equipment_upgrades, struct_equipment.master_sword, x_menu_master_sword, y_menu_master_sword);}
	if (global.unlocked_biggoron_sword == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.biggoron_sword, x_menu_biggoron_sword, y_menu_biggoron_sword);}
	
	//Row 2 - Shields
	if (global.unlocked_deku_shield == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.deku_shield, x_menu_deku_shield, y_menu_deku_shield);}
	if (global.unlocked_hylian_shield == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.hylian_shield, x_menu_hylian_shield, y_menu_hylian_shield);}
	if (global.unlocked_mirror_shield == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.mirror_shield, x_menu_mirror_shield, y_menu_mirror_shield);}
	
	//Row 3 - tunics
	if (global.unlocked_kokiri_tunic == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.kokiri_tunic, x_menu_kokiri_tunic, y_menu_kokiri_tunic);}
	if (global.unlocked_goron_tunic == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.goron_tunic, x_menu_goron_tunic, y_menu_goron_tunic);}
	if (global.unlocked_zora_tunic == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.zora_tunic, x_menu_zora_tunic, y_menu_zora_tunic);}
	
	//Row 4 - Boots
	if (global.unlocked_kokiri_boots == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.boots, x_menu_kokiri_boots, y_menu_kokiri_boots);}
	if (global.unlocked_iron_boots == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.iron_boots, x_menu_iron_boots, y_menu_iron_boots);}
	if (global.unlocked_hover_boots == true) {draw_sprite(spr_equipment_upgrades, struct_equipment.hover_boots, x_menu_hover_boots, y_menu_hover_boots);}
#endregion
#region Cursor Calculations
	equipment_cursor_state = global.last_equipment_cursor_position;
	var current_x = obj_pause_menu_equipment_cursor.x;
	var current_y = obj_pause_menu_equipment_cursor.y;
	
	//Sword
	if ((current_x == x_menu_kokiri_sword) && (current_y == y_menu_kokiri_sword)) {equipment_cursor_state = struct_equipment.kokiri_sword;}
	if ((current_x == x_menu_master_sword) && (current_y == y_menu_master_sword)) {equipment_cursor_state = struct_equipment.master_sword;}
	if ((current_x == x_menu_biggoron_sword) && (current_y == y_menu_biggoron_sword)) {equipment_cursor_state = struct_equipment.biggoron_sword;}
	
	//Shields
	if ((current_x == x_menu_deku_shield) && (current_y == y_menu_deku_shield)) {equipment_cursor_state = struct_equipment.deku_shield;}
	if ((current_x == x_menu_hylian_shield) && (current_y == y_menu_hylian_shield)) {equipment_cursor_state = struct_equipment.hylian_shield;}
	if ((current_x == x_menu_mirror_shield) && (current_y == y_menu_mirror_shield)) {equipment_cursor_state = struct_equipment.mirror_shield;}
	
	//Tunics
	if ((current_x == x_menu_kokiri_tunic) && (current_y == y_menu_kokiri_tunic)) {equipment_cursor_state = struct_equipment.kokiri_tunic;}
	if ((current_x == x_menu_goron_tunic) && (current_y == y_menu_goron_tunic)) {equipment_cursor_state = struct_equipment.goron_tunic;}
	if ((current_x == x_menu_zora_tunic) && (current_y == y_menu_zora_tunic)){equipment_cursor_state = struct_equipment.zora_tunic;}
	
	//Boots
	if ((current_x == x_menu_kokiri_boots) && (current_y == y_menu_kokiri_boots)) {equipment_cursor_state = struct_equipment.boots;}
	if ((current_x == x_menu_iron_boots) && (current_y == y_menu_iron_boots)) {equipment_cursor_state = struct_equipment.iron_boots;}
	if ((current_x == x_menu_hover_boots) && (current_y == y_menu_hover_boots)) {equipment_cursor_state = struct_equipment.hover_boots;}
	
	global.last_equipment_cursor_position = equipment_cursor_state;
#endregion

#region Variable Setting
if (keyboard_check_pressed(global.assigned_key_x_button))
	{
		//Tunics
		if (equipment_cursor_state == struct_equipment.kokiri_tunic) {
			global.equipped_kokiri_tunic = true; 
			global.equipped_goron_tunic = false;
			global.equipped_zora_tunic = false;
			obj_Link.current_pal = 0;
		}
		if (equipment_cursor_state == struct_equipment.goron_tunic) 
		{
			global.equipped_kokiri_tunic = false; 
			global.equipped_goron_tunic = true; 
			global.equipped_zora_tunic = false;
			obj_Link.current_pal = 1;
		}
		if (equipment_cursor_state == struct_equipment.zora_tunic) 
		{
			global.equipped_kokiri_tunic = false;
			global.equipped_goron_tunic = false; 
			global.equipped_zora_tunic = true;
			obj_Link.current_pal = 2;
		}
	
		//Boots
		if (equipment_cursor_state == struct_equipment.boots)
		{
			global.equipped_kokiri_boots = true;
			global.equipped_iron_boots = false;
			global.equipped_hover_boots = false;
		}
		if (equipment_cursor_state == struct_equipment.iron_boots)
		{
			global.equipped_kokiri_boots = false;
			global.equipped_iron_boots = true;
			global.equipped_hover_boots = false;
		}
		if (equipment_cursor_state == struct_equipment.hover_boots)
		{
			global.equipped_kokiri_boots = false;
			global.equipped_iron_boots = false;
			global.equipped_hover_boots = true;
		}
		
		//Shield
		if (equipment_cursor_state == struct_equipment.deku_shield)
		{
			global.equipped_kokiri_shield = true;
			global.equipped_hylian_shield = false;
			global.equipped_mirror_shield = false;
		}
		if (equipment_cursor_state == struct_equipment.hylian_shield)
		{
			global.equipped_kokiri_shield = false;
			global.equipped_hylian_shield = true;
			global.equipped_mirror_shield = false;
		}
		if (equipment_cursor_state == struct_equipment.mirror_shield)
		{
			global.equipped_kokiri_shield = false;
			global.equipped_hylian_shield = false;
			global.equipped_mirror_shield = true;
		}
		
	}
#endregion


#region Drawing gfx
if ((equipment_cursor_state = struct_equipment.kokiri_sword) || (equipment_cursor_state = struct_equipment.master_sword) || (equipment_cursor_state = struct_equipment.biggoron_sword))
	if (!instance_exists(obj_x_button_gfx))
	{
		if (keyboard_check_pressed(global.assigned_key_x_button))
			{
				var gfx = instance_create_depth(obj_pause_menu_equipment_cursor.x, obj_pause_menu_equipment_cursor.y, depth-1, obj_x_button_gfx);
				gfx.current_item = equipment_cursor_state;				
			}
	}
#endregion
}