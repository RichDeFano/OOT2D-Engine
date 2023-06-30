if (global.in_pause_menus == true)
{
	if (obj_pause_menu.current_state == struct_pause.item_select)
	{

		visible = true;
		if ((keyboard_check_direct(global.assigned_key_left)) && (x > left_margin_item) && (have_moved_left == false)) {x -= 32; have_moved_left = true;}
		if ((keyboard_check_direct(global.assigned_key_right)) && (x < right_margin_item) && (have_moved_right == false)){x += 32; have_moved_right = true;}
		if ((keyboard_check_direct(global.assigned_key_up)) && (y > up_margin_item) && (have_moved_up == false)){y -= 32; have_moved_up = true;}
		if ((keyboard_check_direct(global.assigned_key_down)) && (y < down_margin_item) && (have_moved_down == false)){y += 32; have_moved_down = true;}
	
		if (keyboard_check_released(global.assigned_key_left)){have_moved_left = false;}
		if (keyboard_check_released(global.assigned_key_right)){have_moved_right = false;}
		if (keyboard_check_released(global.assigned_key_up)){have_moved_up = false;}
		if (keyboard_check_released(global.assigned_key_down)){have_moved_down = false;}
	}
	else
	{
		//should_draw = false;}
		visible = false;
	}

}
else if (global.in_pause_menus == false){instance_destroy();}
