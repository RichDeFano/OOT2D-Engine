// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_press_cbutton(){
if (global.in_pause_menus == false)
{

	if (keyboard_check_pressed(global.assigned_key_c_button_down))
	{
		current_item = global.assigned_value_c_button_down;
		current_button = global.assigned_key_c_button_down;
	}
	else if (keyboard_check_pressed(global.assigned_key_c_button_right))
	{
		current_item = global.assigned_value_c_button_right;
		current_button = global.assigned_key_c_button_right;
	}
	else if (keyboard_check_pressed(global.assigned_key_c_button_left))
	{
		current_item = global.assigned_value_c_button_left;
		current_button = global.assigned_key_c_button_left;
	}
	
	switch(current_item)
	{
		case struct_c_button_items.deku_stick:
			scr_item_deku_stick();
		break;
		
		case struct_c_button_items.deku_nut:
			scr_item_deku_nut();
		break;
		
		case struct_c_button_items.fairy_slingshot:
			scr_item_fairy_slingshot();
		break;
		
		case struct_c_button_items.bombs:
			scr_item_bomb();
		break;
		
		case struct_c_button_items.bombchu:
			scr_item_bombchu();
		break;
		
		case struct_c_button_items.boomerang:
			scr_item_boomerang(current_button);
		break;
		
		case struct_c_button_items.sarias_ocarina:
			scr_item_ocarina(false);
			
		case struct_c_button_items.ocarina_of_time:
			scr_item_ocarina(true);
		break;
		
		case struct_c_button_items.magic_beans:
			scr_item_magic_bean();
		break;
		
		case struct_c_button_items.bow_and_arrow:
			scr_item_bow_and_arrows(current_button, false, false, false);
		break;
		
		case struct_c_button_items.fire_bow:
			scr_item_bow_and_arrows(current_button, true, false, false);
		break;
		
		case struct_c_button_items.ice_bow:
			scr_item_bow_and_arrows(current_button, false, true, false);
		break;
		
		case struct_c_button_items.light_bow:
			scr_item_bow_and_arrows(current_button, false, false, true);
		break;
		
		case struct_c_button_items.hookshot:
			scr_item_hookshot(false);
		break;
		
		case struct_c_button_items.longshot:
			scr_item_hookshot(true);
		
		case struct_c_button_items.megaton_hammer:
			scr_item_megaton_hammer(current_button);
		break;
		
		case struct_c_button_items.eye_of_truth:
			scr_item_lens_of_truth();
		break;
		
		case struct_c_button_items.dins_fire:
			scr_item_dins_fire();
		break;
		
		case struct_c_button_items.farores_wind:
			scr_item_farores_wind();
		break;
		
		case struct_c_button_items.nayrus_love:
			scr_item_nayrus_love();
		break;
		
		
		
		default:
			break;
	}
}


}