// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_jumping(){
	/*
if (jumping == true)
{
	if (can_jump_down == true) && (jumping_down == false)
	{
		can_jump_down = false;
		jumping_down = true;
		sprite_index = spr_LedgeJumpD;
		image_speed = 0.0;
		current_state = link_state_machine.jumping;
		draw_x = x;
	    draw_y = y;
		jumping_tick_counter = 0;
		jumping = true;
		jumping_up = false;
		jumping_right = false;
		jumping_up = false;
		for(var i = 0; i < position_array_size; i += 1)
		{
			var position_x = i*global.tile_size;
			var position_y = scr_parabola_throw(position_x,fast,angle,0,0,gra);
			position_array[i] = position_y;
		}
	}
	
	else if (can_jump_right == true) && (jumping_right == false)
	{
		can_jump_right = false;
		jumping_right = true;
		sprite_index = spr_LedgeJumpR;
		image_speed = 0.0;
		current_state = link_state_machine.jumping;
		draw_x = x;
	    draw_y = y;
		jumping_tick_counter = 0;
		jumping = true;
		jumping_down = false;
		jumping_left = false;
		jumping_up = false;
		for(var i = 0; i < position_array_size; i += 1)
		{
			var position_x = i*global.tile_size;
			var position_y = scr_parabola_throw(position_x,fast,angle,0,0,gra);
			position_array[i] = position_y;
		}
	}
	
	else if (can_jump_left == true) && (jumping_left == false)
	{
		can_jump_left = false;
		jumping_left = true;
		sprite_index = spr_LedgeJumpL;
		image_speed = 0.0;
		current_state = link_state_machine.jumping;
		draw_x = x;
	    draw_y = y;
		jumping_tick_counter = 0;
		jumping = true;
		jumping_down = false;
		jumping_right = false;
		jumping_up = false;
		for(var i = 0; i < position_array_size; i += 1)
		{
			var position_x = i*global.tile_size;
			var position_y = scr_parabola_throw(position_x,fast,angle,0,0,gra);
			position_array[i] = position_y;
		}
	}
	
	else if (can_jump_up == true) && (jumping_up == false)
	{
		can_jump_up = false;
		can_jump_down = false;
		can_jump_right = false;
		can_jump_up = false;
		jumping_up = true;
		jumping_down = false;
		jumping_right = false;
		jumping_left = false;
		sprite_index = spr_LedgeJumpU;
		image_speed = 0.0;
		current_state = link_state_machine.jumping;
		draw_x = x;
	    draw_y = y;
		jumping_tick_counter = 0;
		jumping = true;
		for(var i = 0; i < position_array_size; i += 1)
		{
			var position_x = i*global.tile_size;
			var position_y = scr_parabola_throw(position_x,fast,angle,0,0,gra);
			position_array[i] = position_y;
		}
	}
	
		if (jumping_up == true)
		{
			if (jumping_tick_counter < position_array_size)
			{
				y -= 8;
				jumping_tick_counter++;
			}
			else
			{
				if (obj_links_movement_alarms.alarm[3] == -1){obj_links_movement_alarms.alarm[3] = 1;}
			}
			jumping_up = true;
		}

		if (jumping_down == true)
		{
			if (jumping_tick_counter < position_array_size)
			{
				y += 8;
				jumping_tick_counter++;
			}
			else
				{
					if (obj_links_movement_alarms.alarm[3] == -1){obj_links_movement_alarms.alarm[3] = 1;}
				}
			jumping_down = true;
		}

		if (jumping_left == true)
		{
			if (jumping_tick_counter < position_array_size)
				{
					x = draw_x - jumping_tick_counter*global.tile_size;
					y = draw_y - position_array[jumping_tick_counter];
					//if (jumping_tick_counter < (position_array_size/2)){link_depth = link_depth + (1/11);}
					//else {link_depth = link_depth - (1/11);}
					jumping_tick_counter++;
				}
				else
				{
					if (obj_links_movement_alarms.alarm[3] == -1){obj_links_movement_alarms.alarm[3] = 1;}
				}
			jumping_left = true;
		}

		if (jumping_right == true)
		{
			if (jumping_tick_counter < position_array_size)
				{
					x = draw_x + jumping_tick_counter*global.tile_size;
					y = draw_y - position_array[jumping_tick_counter];
					//if (jumping_tick_counter < (position_array_size/2)){link_depth = link_depth + (1/(position_array_size/2));}
					//else {link_depth = link_depth - (1/(position_array_size/2));}
					jumping_tick_counter++;
				}
			else
				{
					if (obj_links_movement_alarms.alarm[3] == -1){obj_links_movement_alarms.alarm[3] = 1;}
				}
			jumping_right = true;
		}
}
*/
}