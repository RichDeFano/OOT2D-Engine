// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bottle_index_helper(contents){
	var current_index = 0;
			switch (contents)
			{
				
				case (struct_c_button_items.bottle_empty):
					current_index = 0;
				break;
				
				case (struct_c_button_items.bottle_red_potion):
					current_index = 1;
				break;
				
				case (struct_c_button_items.bottle_big_poe_spirit):
					current_index = 8;
				break;
				
				case (struct_c_button_items.bottle_blue_fire):
					current_index = 11;
				break;
				
				case (struct_c_button_items.bottle_blue_potion):
					current_index = 2;
				break;
				
				case (struct_c_button_items.bottle_bugs):
					current_index = 12;
				break;
				
				case (struct_c_button_items.bottle_fairy):
					current_index = 4;
				break;
				
				case (struct_c_button_items.bottle_fish):
					current_index = 9;
				break;
				
				case (struct_c_button_items.bottle_green_potion):
					current_index = 3;
				break;
				
				case (struct_c_button_items.bottle_half_lon_lon_milk):
					current_index = 6;
				break;
				
				case (struct_c_button_items.bottle_lon_lon_milk):
					current_index = 5;
				break;
				
				case (struct_c_button_items.bottle_poe_spirit):
					current_index = 7;
				break;
				
				case (struct_c_button_items.bottle_ruto_letter):
					current_index =  10;
				break;
			}
	return current_index;
}