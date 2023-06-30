/// @description Insert description here
// You can write your code in this editor
switch(current_item)
{
	case (struct_c_button_items.deku_stick):
		current_item = struct_c_button_items.deku_stick;
		draw_sprite(spr_c_button_items,struct_c_button_items.deku_stick,x,y);	
	break;
				
	case (struct_c_button_items.deku_nut):
		current_item = struct_c_button_items.deku_nut;
		draw_sprite(spr_c_button_items,struct_c_button_items.deku_nut,x,y);		
	break;
				
	case (struct_c_button_items.bombs):
		current_item = struct_c_button_items.bombs;
		draw_sprite(spr_c_button_items,struct_c_button_items.bombs,x,y);			
	break;
				
	case (struct_c_button_items.bow_and_arrow):
		current_item = struct_c_button_items.bow_and_arrow;
		draw_sprite(spr_c_button_items,struct_c_button_items.bow_and_arrow,x,y);				
	break;
	
	case (struct_c_button_items.fire_arrow):
		if (bow_connect_fire == false)
		{
			current_item = struct_c_button_items.fire_arrow;
			draw_sprite(spr_c_button_items,struct_c_button_items.fire_arrow,x,y);
		}
		else
		{
			current_item = struct_c_button_items.fire_bow;
			draw_sprite(spr_c_button_items,struct_c_button_items.fire_bow,x,y);
		}			
	break;
				
	case (struct_c_button_items.fire_bow):
		current_item = struct_c_button_items.fire_bow;
		draw_sprite(spr_c_button_items,struct_c_button_items.fire_bow,x,y);
	break;
				
	case (struct_c_button_items.dins_fire):
		current_item = struct_c_button_items.dins_fire;
		draw_sprite(spr_c_button_items,struct_c_button_items.dins_fire,x,y);				
	break;
				
	case (struct_c_button_items.fairy_slingshot):
		current_item = struct_c_button_items.fairy_slingshot
		draw_sprite(spr_c_button_items,struct_c_button_items.fairy_slingshot,x,y);				
	break;
				
	case (struct_c_button_items.sarias_ocarina):
		if ((global.unlocked_fairy_ocarina == true) && (global.unlocked_ocarina_of_time == false))
		{
			current_item = struct_c_button_items.sarias_ocarina
			draw_sprite(spr_c_button_items,struct_c_button_items.sarias_ocarina,x,y);
		}
		else if (global.unlocked_ocarina_of_time == true)
		{
			current_item = struct_c_button_items.ocarina_of_time;
			draw_sprite(spr_c_button_items,struct_c_button_items.ocarina_of_time,x,y);
		}
	break;
	
	case (struct_c_button_items.ocarina_of_time):
		if ((global.unlocked_fairy_ocarina == true) && (global.unlocked_ocarina_of_time == false))
		{
			current_item = struct_c_button_items.sarias_ocarina
			draw_sprite(spr_c_button_items,struct_c_button_items.sarias_ocarina,x,y);
		}
		else if (global.unlocked_ocarina_of_time == true)
		{
			current_item = struct_c_button_items.ocarina_of_time;
			draw_sprite(spr_c_button_items,struct_c_button_items.ocarina_of_time,x,y);
		}
	break;
	
	case (struct_c_button_items.bombchu):
		current_item = struct_c_button_items.bombchu;
		draw_sprite(spr_c_button_items,struct_c_button_items.bombchu,x,y);			
	break;
				
	case (struct_c_button_items.hookshot):
		if (global.unlocked_hookshot == true) && (global.unlocked_longshot == false) 
		{
			current_item = struct_c_button_items.hookshot;
			draw_sprite(spr_c_button_items, struct_c_button_items.hookshot, x, y);
		}
		else if (global.unlocked_longshot == true)	
		{
			current_item = struct_c_button_items.longshot;
			draw_sprite(spr_c_button_items, struct_c_button_items.longshot, x, y);
		}		
	break;
	
	case (struct_c_button_items.longshot):
		if (global.unlocked_hookshot == true) && (global.unlocked_longshot == false) 
		{
			current_item = struct_c_button_items.hookshot;
			draw_sprite(spr_c_button_items, struct_c_button_items.hookshot, x, y);
		}
		else if (global.unlocked_longshot == true)	
		{
			current_item = struct_c_button_items.longshot;
			draw_sprite(spr_c_button_items, struct_c_button_items.longshot, x, y);
		}		
	break;
	
	case (struct_c_button_items.ice_arrow):
		if (bow_connect_ice == false)
		{
			current_item = struct_c_button_items.ice_arrow;
			draw_sprite(spr_c_button_items,struct_c_button_items.ice_arrow,x,y);
		}
		else
		{
			current_item = struct_c_button_items.ice_bow;
			draw_sprite(spr_c_button_items,struct_c_button_items.ice_bow,x,y);
		}
	break;
	
	case (struct_c_button_items.ice_bow):
		if (bow_connect_ice == false)
		{
			current_item = struct_c_button_items.ice_arrow;
			draw_sprite(spr_c_button_items,struct_c_button_items.ice_arrow,x,y);
		}
		else
		{
			current_item = struct_c_button_items.ice_bow;
			draw_sprite(spr_c_button_items,struct_c_button_items.ice_bow,x,y);
		}
	break;
				
	case (struct_c_button_items.farores_wind):
		current_item = struct_c_button_items.farores_wind;
		draw_sprite(spr_c_button_items,struct_c_button_items.farores_wind,x,y);				
	break;
				
	case (struct_c_button_items.boomerang):
		current_item = struct_c_button_items.boomerang;
		draw_sprite(spr_c_button_items,struct_c_button_items.boomerang,x,y);				
	break;
				
	case (struct_c_button_items.eye_of_truth):
		current_item = struct_c_button_items.eye_of_truth;
		draw_sprite(spr_c_button_items,struct_c_button_items.eye_of_truth,x,y);				
	break;
				
	case (struct_c_button_items.magic_beans):
		current_item = struct_c_button_items.magic_beans;
		draw_sprite(spr_c_button_items,struct_c_button_items.magic_beans,x,y);				
	break;
				
	case (struct_c_button_items.megaton_hammer):
		current_item = struct_c_button_items.megaton_hammer;
		draw_sprite(spr_c_button_items,struct_c_button_items.megaton_hammer,x,y);				
	break;
				
	case (struct_c_button_items.light_arrow):
		if (bow_connect_light == false)
		{
			current_item = struct_c_button_items.light_arrow;
			draw_sprite(spr_c_button_items,struct_c_button_items.light_arrow,x,y);
		}
		else
		{
			current_item = struct_c_button_items.light_bow;
			draw_sprite(spr_c_button_items,struct_c_button_items.light_bow,x,y);
		}				
	break;
	
	case (struct_c_button_items.light_bow):
			current_item = struct_c_button_items.light_bow;
			draw_sprite(spr_c_button_items,struct_c_button_items.light_bow,x,y);				
	break;
				
	case (struct_c_button_items.nayrus_love):
		current_item = struct_c_button_items.nayrus_love;
		draw_sprite(spr_c_button_items,struct_c_button_items.nayrus_love,x,y);				
	break;
	
	case (struct_c_button_items.bottle_1):
		struct_bottle_state = scr_bottle_index_helper(global.bottle_1_contents);
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_1_contents), x, y);		
	break;
				
	case (struct_c_button_items.bottle_2):
		struct_bottle_state = scr_bottle_index_helper(global.bottle_2_contents);
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_2_contents), x, y);				
	break;
				
	case (struct_c_button_items.bottle_3):
		struct_bottle_state = scr_bottle_index_helper(global.bottle_3_contents);
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_3_contents), x, y);				
	break;
				
	case (struct_c_button_items.bottle_4):
		struct_bottle_state = scr_bottle_index_helper(global.bottle_4_contents);
		draw_sprite(spr_bottle_items, scr_bottle_index_helper(global.bottle_4_contents), x, y);			
	break;
	
}