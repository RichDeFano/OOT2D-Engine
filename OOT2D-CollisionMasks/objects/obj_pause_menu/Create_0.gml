current_state = global.last_pause_screen;
#region X/Y Setup
	x_items_base = 80;
	y_items_base = 80;
	
	#region Background Pieces
		x_menu_main = scr_viewport_wrapper(struct_view.XView, 0) + 160;
		y_menu_main = scr_viewport_wrapper(struct_view.YView, 0) + 120;

		x_menu_left_change = scr_viewport_wrapper(struct_view.XView, 0) + 40;
		y_menu_left_change = scr_viewport_wrapper(struct_view.YView, 0) + 120;

		x_menu_right_change = scr_viewport_wrapper(struct_view.XView, 0) + 280;
		y_menu_right_change = scr_viewport_wrapper(struct_view.YView, 0) + 120;
	#endregion

	#region Item Select
		x_menu_deku_stick = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*0;
		x_menu_deku_nut = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*1;
		x_menu_bombs = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*2;
		x_menu_bow = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*3;
		x_menu_fire_arrow = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*4;
		x_menu_dins_fire = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*5;
	
		x_menu_slingshot = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*0;
		x_menu_ocarina = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*1;
		x_menu_bombchu = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*2;
		x_menu_hookshot = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*3;
		x_menu_ice_arrow = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*4;
		x_menu_farores_wind = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*5;
	
		x_menu_boomerang = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*0;
		x_menu_eye_of_truth = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*1;
		x_menu_magic_beans = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*2;
		x_menu_megaton_hammer = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*3;
		x_menu_light_arrow = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*4;
		x_menu_nayrus_love = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*5;
	
		x_menu_bottle_1 = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*0;
		x_menu_bottle_2 = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*1;
		x_menu_bottle_3 = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*2;
		x_menu_bottle_4 = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*3;
		x_menu_adult_quest = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*4;
		x_menu_child_quest = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base + 32*5;
	
	
		y_menu_deku_stick = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*0;
		y_menu_deku_nut = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*0;
		y_menu_bombs = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*0;
		y_menu_bow = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*0;
		y_menu_fire_arrow = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*0;
		y_menu_dins_fire = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*0;
	
		y_menu_slingshot = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*1;
		y_menu_ocarina = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*1;
		y_menu_bombchu = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*1;
		y_menu_hookshot = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*1;
		y_menu_ice_arrow = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*1;
		y_menu_farores_wind = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*1;
	
		y_menu_boomerang = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*2;
		y_menu_eye_of_truth = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*2;
		y_menu_magic_beans = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*2;
		y_menu_megaton_hammer = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*2;
		y_menu_light_arrow = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*2;
		y_menu_nayrus_love = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*2;
	
		y_menu_bottle_1 = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*3;
		y_menu_bottle_2 = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*3;
		y_menu_bottle_3 = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*3;
		y_menu_bottle_4 = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base + 32*3;

		x_menu_item_cursor = scr_viewport_wrapper(struct_view.XView, 0) + x_items_base;
		y_menu_item_cursor = scr_viewport_wrapper(struct_view.YView, 0) + y_items_base;
	#endregion

	#region Equipment Select
	
		equipment_x_pos_1 = 192;
		equipment_x_pos_2 = 220;
		equipment_x_pos_3 = 248;
		
		equipment_nook_x = 64;
		equipment_y_pos_1 = 76;
		equipment_y_pos_2 = 108;
		equipment_y_pos_3 = 140;
		equipment_y_pos_4 = 172;
		
		x_menu_nook_1 = scr_viewport_wrapper(struct_view.XView, 0) + equipment_nook_x;
		y_menu_nook_1 = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_1;
		
		x_menu_nook_2 = scr_viewport_wrapper(struct_view.XView, 0) + equipment_nook_x;
		y_menu_nook_2 = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_2;
		
		x_menu_nook_3 = scr_viewport_wrapper(struct_view.XView, 0) + equipment_nook_x;
		y_menu_nook_3 = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_3;
		
		x_menu_nook_4 = scr_viewport_wrapper(struct_view.XView, 0) + equipment_nook_x;
		y_menu_nook_4 = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_4;
		
		x_menu_kokiri_sword = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_1;
		y_menu_kokiri_sword = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_1;
		
		x_menu_master_sword = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_2;
		y_menu_master_sword = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_1;
		
		x_menu_biggoron_sword = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_3;
		y_menu_biggoron_sword = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_1;
		
		x_menu_deku_shield = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_1;
		y_menu_deku_shield = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_2;
		
		x_menu_hylian_shield = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_2;
		y_menu_hylian_shield = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_2;
		
		x_menu_mirror_shield = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_3;
		y_menu_mirror_shield = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_2;
		
		x_menu_kokiri_tunic = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_1;
		y_menu_kokiri_tunic = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_3;
		
		x_menu_goron_tunic = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_2;
		y_menu_goron_tunic = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_3;
		
		x_menu_zora_tunic = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_3;
		y_menu_zora_tunic = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_3;
		
		x_menu_kokiri_boots = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_1;
		y_menu_kokiri_boots = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_4;
		
		x_menu_iron_boots = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_2;
		y_menu_iron_boots = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_4;
		
		x_menu_hover_boots = scr_viewport_wrapper(struct_view.XView, 0) + equipment_x_pos_3;
		y_menu_hover_boots = scr_viewport_wrapper(struct_view.YView, 0) + equipment_y_pos_4;
		
	#endregion
	
	#region Quest Select
		x_menu_stone_of_agony = scr_viewport_wrapper(struct_view.XView, 0) + 88;
		y_menu_stone_of_agony = scr_viewport_wrapper(struct_view.YView, 0) + 72;
		
		x_menu_gerudo_token = scr_viewport_wrapper(struct_view.XView, 0) + 60;
		y_menu_gerudo_token = scr_viewport_wrapper(struct_view.YView, 0) + 72;
		
		x_menu_gold_skulltula = scr_viewport_wrapper(struct_view.XView, 0) + 60;
		y_menu_gold_skulltula = scr_viewport_wrapper(struct_view.YView, 0) + 98;
		x_menu_gold_skulltula_amt = scr_viewport_wrapper(struct_view.XView, 0) + 88;
		y_menu_gold_skulltula_amt = scr_viewport_wrapper(struct_view.YView, 0) + 98;
		
		x_menu_kokiri_emerald = scr_viewport_wrapper(struct_view.XView, 0) + 192;
		y_menu_kokiri_emerald = scr_viewport_wrapper(struct_view.YView, 0) + 176;
		x_menu_goron_ruby = scr_viewport_wrapper(struct_view.XView, 0) + 216;
		y_menu_goron_ruby = scr_viewport_wrapper(struct_view.YView, 0) + 176;
		x_menu_zora_sapphire = scr_viewport_wrapper(struct_view.XView, 0) + 244;
		y_menu_zora_sapphire = scr_viewport_wrapper(struct_view.YView, 0) + 176;
		
		x_menu_song_1 = scr_viewport_wrapper(struct_view.XView, 0) + 60;
		x_menu_song_2 = scr_viewport_wrapper(struct_view.XView, 0) + 78;
		x_menu_song_3 = scr_viewport_wrapper(struct_view.XView, 0) + 94;
		x_menu_song_4 = scr_viewport_wrapper(struct_view.XView, 0) + 112;
		x_menu_song_5 = scr_viewport_wrapper(struct_view.XView, 0) + 130;
		x_menu_song_6 = scr_viewport_wrapper(struct_view.XView, 0) + 148;
		
		y_menu_song_row_1 = scr_viewport_wrapper(struct_view.YView, 0) + 130;
		y_menu_song_row_2 = scr_viewport_wrapper(struct_view.YView, 0) + 152;
		
		x_menu_light_medallion = scr_viewport_wrapper(struct_view.XView, 0) + 248;
		y_menu_light_medallion = scr_viewport_wrapper(struct_view.YView, 0) + 96;
		
		x_menu_forest_medallion = scr_viewport_wrapper(struct_view.XView, 0) + 220;
		y_menu_forest_medallion = scr_viewport_wrapper(struct_view.YView, 0) + 76;
		
		x_menu_fire_medallion = scr_viewport_wrapper(struct_view.XView, 0) + 248;
		y_menu_fire_medallion = scr_viewport_wrapper(struct_view.YView, 0) + 128;
		
		x_menu_water_medallion = scr_viewport_wrapper(struct_view.XView, 0) + 220;
		y_menu_water_medallion = scr_viewport_wrapper(struct_view.YView, 0) + 144;
		
		x_menu_spirit_medallion = scr_viewport_wrapper(struct_view.XView, 0) + 188;
		y_menu_spirit_medallion = scr_viewport_wrapper(struct_view.YView, 0) + 128;
		
		x_menu_shadow_medallion = scr_viewport_wrapper(struct_view.XView, 0) + 188;
		y_menu_shadow_medallion = scr_viewport_wrapper(struct_view.YView, 0) + 96;
		
		
	#endregion
#endregion

child_left_btn = instance_create_depth(x_menu_left_change, y_menu_left_change, depth, obj_pause_menu_shift_left);
child_right_btn = instance_create_depth(x_menu_right_change, y_menu_right_change, depth, obj_pause_menu_shift_right);

update = true;
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

item_cursor_state = struct_c_button_items.deku_nut;
