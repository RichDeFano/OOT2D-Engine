if (!instance_exists(obj_pause_menu)){instance_destroy();}

if (current_button == struct_c_buttons.c_button_left)
{
	x_val = hud_button_c_left.x_val;
	y_val = hud_button_c_left.y_val;
}
else if (current_button == struct_c_buttons.c_button_right)
{
	x_val = hud_button_c_right.x_val;
	y_val = hud_button_c_right.y_val;
}
else if (current_button == struct_c_buttons.c_button_down)
{
	x_val = hud_button_c_down.x_val;
	y_val = hud_button_c_down.y_val;
}


if (distance_to_point(x_val, y_val) <= 15)
{
	var right_val = global.assigned_value_c_button_right;
	var down_val = global.assigned_value_c_button_down;
	var left_val = global.assigned_value_c_button_left;

	if (current_button == struct_c_buttons.c_button_left)
		{
		if ((current_item != right_val) && (current_item != down_val))
			{
				global.assigned_value_c_button_left = current_item;
			}
		else if ((current_item == right_val) && (current_item != down_val))
			{
				global.assigned_value_c_button_left = current_item;
				global.assigned_value_c_button_right = left_val;
			}
		else if ((current_item != right_val) && (current_item == down_val))
			{
				global.assigned_value_c_button_left = current_item;
				global.assigned_value_c_button_down = left_val;
			}
		}
	if (current_button == struct_c_buttons.c_button_right)
		{
		if ((current_item != left_val) && (current_item != down_val))
			{
				global.assigned_value_c_button_right = current_item;
			}
		else if ((current_item == left_val) && (current_item != down_val))
			{
				global.assigned_value_c_button_right = current_item;
				global.assigned_value_c_button_left = right_val;
			}
		else if ((current_item != left_val) && (current_item == down_val))
			{
				global.assigned_value_c_button_right = current_item;
				global.assigned_value_c_button_down = right_val;
			}
		}
	if (current_button == struct_c_buttons.c_button_down)
		{
		if ((current_item != left_val) && (current_item != right_val))
			{
				global.assigned_value_c_button_down = current_item;
			}
		else if ((current_item == left_val) && (current_item != right_val))
			{
				global.assigned_value_c_button_down = current_item;
				global.assigned_value_c_button_left = down_val;
			}
		else if ((current_item != left_val) && (current_item == right_val))
			{
				global.assigned_value_c_button_down = current_item;
				global.assigned_value_c_button_right = down_val;
			}
		}
		
	instance_destroy();
}
else
{
	if ((current_item == struct_c_button_items.fire_arrow) && (bow_connect_fire = false))
	{
		move_towards_point(obj_pause_menu.x_menu_bow,obj_pause_menu.y_menu_bow,10);
	}
	else if ((current_item == struct_c_button_items.ice_arrow) && (bow_connect_ice = false))
	{
		move_towards_point(obj_pause_menu.x_menu_bow,obj_pause_menu.y_menu_bow,10);
	}
	else if ((current_item == struct_c_button_items.light_arrow) && (bow_connect_light = false))
	{
		move_towards_point(obj_pause_menu.x_menu_bow,obj_pause_menu.y_menu_bow,10);
	}
	else{move_towards_point(x_val,y_val,15);}
}

if (distance_to_point(obj_pause_menu.x_menu_bow,obj_pause_menu.y_menu_bow) <= 15)
{
	bow_connect_fire = true;
}

if (distance_to_point(obj_pause_menu.x_menu_bow,obj_pause_menu.y_menu_bow) <= 15)
{
	bow_connect_ice = true;
}

if (distance_to_point(obj_pause_menu.x_menu_bow,obj_pause_menu.y_menu_bow) <= 15)
{
	bow_connect_light = true;
}
