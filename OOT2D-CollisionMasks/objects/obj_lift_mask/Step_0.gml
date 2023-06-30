if (selected == true)
{
	if (in_air == false) 
	{
		draw_x = x;
	    draw_y = y;
	}
	
	if (obj_Link.holding == true)
	{
		x = obj_Link.x;
		y = obj_Link.y-11;
		depth = obj_Link.depth - 1;
		throw_depth = obj_Link.link_depth + 1;
		for(var i = 0; i < position_array_size; i += 1)
		{
			var position_x = i*global.tile_size;
			var position_y = scr_parabola_throw(position_x,fast,angle,0,0,gra);
			position_array[i] = position_y;
		}
	}

	if ((obj_Link.throwing == true) || obj_Link.setting == true) 
	{
		obj_Link.can_lift = false;
		obj_Link.holding = false;
	}

	if ((obj_Link.throwing == true) || (in_air == true))
	{
	
		if ((in_air == false))
		{
			tick_counter = 0;
			in_air = true;
			//alarm[1] = position_array_size/2;
		}
		if ((obj_Link.throw_up == true) || (in_air_up == true))
		{
			if (tick_counter < position_array_size)
			{
				y -= 8;
				tick_counter++;
			}
			else
			{
				if (alarm[2] == -1){alarm[2] = 1;}
			}
			in_air_up = true;
		}

		if ((obj_Link.throw_down == true) || (in_air_down == true))
		{
			if (tick_counter < position_array_size)
			{
				y += 8;
				in_air_down = true;
				if (toggled == false){depth = obj_Link.depth - 1;}
				else {depth = 0;}
				tick_counter++;
			}
			else
				{
					if (alarm[2] == -1){alarm[2] = 1;}
				}
			in_air_down = true;
		}

		if ((obj_Link.throw_left == true) || (in_air_left == true))
		{
			if (tick_counter < position_array_size)
				{
					x = draw_x - tick_counter*global.tile_size;
					y = draw_y - position_array[tick_counter];
					if (tick_counter < position_array_size/2){throw_depth = throw_depth + (1/11);}
					else {throw_depth = throw_depth - (1/11);}
					tick_counter++;
				}
				else
				{
					if (alarm[2] == -1){alarm[2] = 1;}
				}
			in_air_left = true;
		}

		if ((obj_Link.throw_right == true) || (in_air_right == true))
		{
			if (tick_counter < position_array_size)
				{
					x = draw_x + tick_counter*global.tile_size;
					y = draw_y - position_array[tick_counter];
					if (tick_counter < position_array_size/2){throw_depth = throw_depth + (1/11);}
					else {throw_depth = throw_depth - (1/11);}
					tick_counter++;
				}
			else
				{
				if (alarm[2] == -1){alarm[2] = 1;}
				}
			in_air_right = true;
		}

		obj_Link.stop_lift = true;
		obj_Link.can_lift = false;
		obj_Link.pick_up = false;
		solid = false;
	
	
	}

	if (obj_Link.setting == true)
	{
		obj_Link.can_lift = false;

		if (obj_Link.set_right == true){x += 14;}
		if (obj_Link.set_left == true){x -= 14;}
		if (obj_Link.set_up == true){y -= 14;}
		if (obj_Link.set_down = true){y += 14;}
	
		solid = true;
		depth = 0;
		obj_Link.stop_lift = true;
		y += 20;

		if (alarm[2] == -1){alarm[2] = 1;}
	}
}

