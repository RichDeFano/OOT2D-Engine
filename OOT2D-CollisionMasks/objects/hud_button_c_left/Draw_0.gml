x_val = scr_viewport_wrapper(struct_view.XView, 0) + 255;
y_val = scr_viewport_wrapper(struct_view.YView, 0) + 24;
draw_sprite(spr_c_button, 1, x_val, y_val)

switch(global.assigned_value_c_button_left)
{
	case (struct_c_button_items.deku_stick):
		draw_sprite(spr_c_button_items,struct_c_button_items.deku_stick,x_val, y_val);	
	break;
				
	case (struct_c_button_items.deku_nut):
		draw_sprite(spr_c_button_items,struct_c_button_items.deku_nut,x_val, y_val);		
	break;
				
	case (struct_c_button_items.bombs):
		draw_sprite(spr_c_button_items,struct_c_button_items.bombs,x_val, y_val);			
	break;
				
	case (struct_c_button_items.bow_and_arrow):
		draw_sprite(spr_c_button_items,struct_c_button_items.bow_and_arrow,x_val, y_val);
		draw_sprite(sprLNumber,global.current_arrows,x_val+8-32, y_val+10);
	break;
				
	case (struct_c_button_items.fire_bow):
		draw_sprite(spr_c_button_items,struct_c_button_items.fire_bow,x_val, y_val);				
	break;
				
	case (struct_c_button_items.dins_fire):
		draw_sprite(spr_c_button_items,struct_c_button_items.dins_fire,x_val, y_val);				
	break;
				
	case (struct_c_button_items.fairy_slingshot):
		draw_sprite(spr_c_button_items,struct_c_button_items.fairy_slingshot,x_val, y_val);				
	break;
				
	case (struct_c_button_items.sarias_ocarina):
		if ((global.unlocked_fairy_ocarina == true) && (global.unlocked_ocarina_of_time == false)){draw_sprite(spr_c_button_items,struct_c_button_items.sarias_ocarina,x_val, y_val);}
		else if (global.unlocked_ocarina_of_time == true){draw_sprite(spr_c_button_items,struct_c_button_items.ocarina_of_time,x_val, y_val);}
	break;
	
	case (struct_c_button_items.ocarina_of_time):
		if ((global.unlocked_fairy_ocarina == true) && (global.unlocked_ocarina_of_time == false)){draw_sprite(spr_c_button_items,struct_c_button_items.sarias_ocarina,x_val, y_val);}
		else if (global.unlocked_ocarina_of_time == true){draw_sprite(spr_c_button_items,struct_c_button_items.ocarina_of_time,x_val, y_val);}
	break;
				
	case (struct_c_button_items.bombchu):
		draw_sprite(spr_c_button_items,struct_c_button_items.bombchu,x_val, y_val);			
	break;
				
	case (struct_c_button_items.hookshot):
		if (global.unlocked_hookshot == true) && (global.unlocked_longshot == false) {draw_sprite(spr_c_button_items, struct_c_button_items.hookshot, x_val, y_val);}
		else if (global.unlocked_longshot == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.longshot, x_val, y_val);}		
	break;
	
	case (struct_c_button_items.longshot):
		if (global.unlocked_hookshot == true) && (global.unlocked_longshot == false) {draw_sprite(spr_c_button_items, struct_c_button_items.hookshot, x_val, y_val);}
		else if (global.unlocked_longshot == true)	{draw_sprite(spr_c_button_items, struct_c_button_items.longshot, x_val, y_val);}		
	break;
				
	case (struct_c_button_items.ice_bow):
		draw_sprite(spr_c_button_items,struct_c_button_items.ice_bow,x_val, y_val);				
	break;
				
	case (struct_c_button_items.farores_wind):
		draw_sprite(spr_c_button_items,struct_c_button_items.farores_wind,x_val, y_val);				
	break;
				
	case (struct_c_button_items.boomerang):
		draw_sprite(spr_c_button_items,struct_c_button_items.boomerang,x_val, y_val);				
	break;
				
	case (struct_c_button_items.eye_of_truth):
		draw_sprite(spr_c_button_items,struct_c_button_items.eye_of_truth,x_val, y_val);				
	break;
				
	case (struct_c_button_items.magic_beans):
		draw_sprite(spr_c_button_items,struct_c_button_items.magic_beans,x_val, y_val);				
	break;
				
	case (struct_c_button_items.megaton_hammer):
		draw_sprite(spr_c_button_items,struct_c_button_items.megaton_hammer,x_val, y_val);				
	break;
				
	case (struct_c_button_items.light_bow):
		draw_sprite(spr_c_button_items,struct_c_button_items.light_bow,x_val, y_val);				
	break;
				
	case (struct_c_button_items.nayrus_love):
		draw_sprite(spr_c_button_items,struct_c_button_items.nayrus_love,x_val, y_val);				
	break;
		
	case (struct_c_button_items.bottle_1):
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_1_contents), x_val, y_val);		
	break;
				
	case (struct_c_button_items.bottle_2):
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_2_contents), x_val, y_val);				
	break;
				
	case (struct_c_button_items.bottle_3):
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_3_contents), x_val, y_val);				
	break;
				
	case (struct_c_button_items.bottle_4):
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_4_contents), x_val, y_val);			
	break;
	
	case (struct_c_button_items.null):
		
	break;
}