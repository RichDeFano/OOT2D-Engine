function scr_pause_item_select_step(){
	
#region Draw Available Items
	//Row 1
	if (global.unlocked_deku_stick == true) {draw_sprite(spr_c_button_items, struct_c_button_items.deku_stick, x_menu_deku_stick, y_menu_deku_stick);}
	if (global.unlocked_deku_nuts == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.deku_nut, x_menu_deku_nut, y_menu_deku_nut);}
	if (global.unlocked_bombs == true)		{draw_sprite(spr_c_button_items, struct_c_button_items.bombs, x_menu_bombs, y_menu_bombs);}
	if (global.unlocked_fairy_bow == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.bow_and_arrow, x_menu_bow, y_menu_bow);}
	if (global.unlocked_fire_arrows == true){draw_sprite(spr_c_button_items, struct_c_button_items.fire_arrow, x_menu_fire_arrow, y_menu_fire_arrow);}
	if (global.unlocked_dins_fire == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.dins_fire, x_menu_dins_fire, y_menu_dins_fire);}
	
	//Row 2
	if (global.unlocked_fairy_slingshot == true) {draw_sprite(spr_c_button_items, struct_c_button_items.fairy_slingshot, x_menu_slingshot, y_menu_slingshot);}
	if (global.unlocked_fairy_ocarina == true) && (global.unlocked_ocarina_of_time == false) {draw_sprite(spr_c_button_items, struct_c_button_items.sarias_ocarina, x_menu_ocarina, y_menu_ocarina);}
		else if (global.unlocked_ocarina_of_time == true) {draw_sprite(spr_c_button_items, struct_c_button_items.ocarina_of_time, x_menu_ocarina, y_menu_ocarina);}
	if (global.unlocked_bombchu == true)		{draw_sprite(spr_c_button_items, struct_c_button_items.bombchu, x_menu_bombchu, y_menu_bombchu);}
	if (global.unlocked_hookshot == true) && (global.unlocked_longshot == false) {draw_sprite(spr_c_button_items, struct_c_button_items.hookshot, x_menu_hookshot, y_menu_hookshot);}
		else if (global.unlocked_longshot == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.longshot, x_menu_hookshot, y_menu_hookshot);}
	if (global.unlocked_ice_arrows == true)		{draw_sprite(spr_c_button_items, struct_c_button_items.ice_arrow, x_menu_ice_arrow, y_menu_ice_arrow);}
	if (global.unlocked_farores_wind == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.farores_wind, x_menu_farores_wind, y_menu_farores_wind);}
	
	//Row 3
	if (global.unlocked_boomerang == true)		{draw_sprite(spr_c_button_items, struct_c_button_items.boomerang, x_menu_boomerang, y_menu_boomerang);}
	if (global.unlocked_lens_of_truth == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.eye_of_truth, x_menu_eye_of_truth, y_menu_eye_of_truth);}
	if (global.unlocked_magic_bean == true)		{draw_sprite(spr_c_button_items, struct_c_button_items.magic_beans, x_menu_magic_beans, y_menu_magic_beans);}
	if (global.unlocked_megaton_hammer == true) {draw_sprite(spr_c_button_items, struct_c_button_items.megaton_hammer, x_menu_megaton_hammer, y_menu_megaton_hammer);}
	if (global.unlocked_light_arrows == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.light_arrow, x_menu_light_arrow, y_menu_light_arrow);}
	if (global.unlocked_nayrus_love == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.nayrus_love, x_menu_nayrus_love, y_menu_nayrus_love);}
	
	//Row 4
	if (global.unlocked_bottle_1 == true) {draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_1_contents), x_menu_bottle_1, y_menu_bottle_1);}
	if (global.unlocked_bottle_2 == true) {draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_2_contents), x_menu_bottle_2, y_menu_bottle_2);}
	if (global.unlocked_bottle_3 == true) {draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_3_contents), x_menu_bottle_3, y_menu_bottle_3);}
	if (global.unlocked_bottle_4 == true) {draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_4_contents), x_menu_bottle_4, y_menu_bottle_4);}
	
	//Quest Item 1
	//Quest Item 2
	                 
#endregion
#region Cursor Calculations
	item_cursor_state = global.last_item_cursor_position;
	var current_x = obj_pause_menu_item_cursor.x;
	var current_y = obj_pause_menu_item_cursor.y;
	if ((current_x == x_menu_deku_stick) && (current_y == y_menu_deku_stick)) {item_cursor_state = struct_c_button_items.deku_stick;}
	else if ((current_x == x_menu_deku_nut) && (current_y == y_menu_deku_nut)) {item_cursor_state = struct_c_button_items.deku_nut;}
	else if ((current_x == x_menu_bombs) && (current_y == y_menu_bombs)) {item_cursor_state = struct_c_button_items.bombs;}
	else if ((current_x == x_menu_bow) && (current_y == y_menu_bow)) {item_cursor_state = struct_c_button_items.bow_and_arrow;}
	else if ((current_x == x_menu_fire_arrow) && (current_y == y_menu_fire_arrow)) {item_cursor_state = struct_c_button_items.fire_arrow;}
	else if ((current_x == x_menu_dins_fire) && (current_y == y_menu_dins_fire)) {item_cursor_state = struct_c_button_items.dins_fire;}
	
	else if ((current_x == x_menu_slingshot) && (current_y == y_menu_slingshot)) {item_cursor_state = struct_c_button_items.fairy_slingshot;}
	else if ((current_x == x_menu_ocarina) && (current_y == y_menu_ocarina)) {item_cursor_state = struct_c_button_items.sarias_ocarina;}
	else if ((current_x == x_menu_bombchu) && (current_y == y_menu_bombchu)) {item_cursor_state = struct_c_button_items.bombchu;}
	else if ((current_x == x_menu_hookshot) && (current_y == y_menu_hookshot)) {item_cursor_state = struct_c_button_items.hookshot;}
	else if ((current_x == x_menu_ice_arrow) && (current_y == y_menu_ice_arrow)) {item_cursor_state = struct_c_button_items.ice_arrow;}
	else if ((current_x == x_menu_farores_wind) && (current_y == y_menu_farores_wind)) {item_cursor_state = struct_c_button_items.farores_wind;}
	
	else if ((current_x == x_menu_boomerang) && (current_y == y_menu_boomerang)) {item_cursor_state = struct_c_button_items.boomerang;}
	else if ((current_x == x_menu_eye_of_truth) && (current_y == y_menu_eye_of_truth)) {item_cursor_state = struct_c_button_items.eye_of_truth;}
	else if ((current_x == x_menu_magic_beans) && (current_y == y_menu_magic_beans)) {item_cursor_state = struct_c_button_items.magic_beans;}
	else if ((current_x == x_menu_megaton_hammer) && (current_y == y_menu_megaton_hammer)) {item_cursor_state = struct_c_button_items.megaton_hammer;}
	else if ((current_x == x_menu_light_arrow) && (current_y == y_menu_light_arrow)) {item_cursor_state = struct_c_button_items.light_arrow;}
	else if ((current_x == x_menu_nayrus_love) && (current_y == y_menu_nayrus_love)) {item_cursor_state = struct_c_button_items.nayrus_love;}
	
	else if ((current_x == x_menu_bottle_1) && (current_y == y_menu_bottle_1)) {item_cursor_state = struct_c_button_items.bottle_1;}
	else if ((current_x == x_menu_bottle_2) && (current_y == y_menu_bottle_2)) {item_cursor_state = struct_c_button_items.bottle_2;}
	else if ((current_x == x_menu_bottle_3) && (current_y == y_menu_bottle_3)) {item_cursor_state = struct_c_button_items.bottle_3;}
	else if ((current_x == x_menu_bottle_4) && (current_y == y_menu_bottle_4)) {item_cursor_state = struct_c_button_items.bottle_4;}
	global.last_item_cursor_position = item_cursor_state;
#endregion
if (!instance_exists(obj_c_button_gfx))
	{
		if (keyboard_check_pressed(global.assigned_key_c_button_left))
			{
				var gfx = instance_create_depth(obj_pause_menu_item_cursor.x, obj_pause_menu_item_cursor.y, depth-1, obj_c_button_gfx);
					gfx.current_button = struct_c_buttons.c_button_left;
					gfx.current_item = item_cursor_state;				
			}
		else if (keyboard_check_pressed(global.assigned_key_c_button_right))
			{
				var gfx = instance_create_depth(obj_pause_menu_item_cursor.x, obj_pause_menu_item_cursor.y, depth-1, obj_c_button_gfx);
					gfx.current_button = struct_c_buttons.c_button_right;
					gfx.current_item = item_cursor_state;				
			}	
		else if (keyboard_check_pressed(global.assigned_key_c_button_down))
			{
				var gfx = instance_create_depth(obj_pause_menu_item_cursor.x, obj_pause_menu_item_cursor.y, depth-1, obj_c_button_gfx);
					gfx.current_button = struct_c_buttons.c_button_down;
					gfx.current_item = item_cursor_state;	
			}	
	}
}