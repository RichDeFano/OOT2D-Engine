function scr_item_bow_and_arrows(current_button, fire_arrow, ice_arrow, light_arrow)
{
	if ((global.current_arrows > 0) && (!instance_exists(obj_arrow)) && (shooting_bow == false))
	{
		#region Preparing To Shoot
			if ((can_shoot_arrows == true) && (keyboard_check_direct(current_button)))
			{
				if ((sprite_index == spr_downS) || (sprite_index = spr_down))
				{
					holding_bow_down = true;
					sprite_index = spr_BowD;
				}
				else if ((sprite_index == spr_leftS) || (sprite_index = spr_left))
				{
					holding_bow_left = true;
					sprite_index = spr_BowL;
				}
				else if ((sprite_index == spr_upS) || (sprite_index = spr_up))
				{
					holding_bow_up = true;
					sprite_index = spr_BowU;
				}
				else if ((sprite_index == spr_rightS) || (sprite_index = spr_right))
				{
					holding_bow_right = true;
					sprite_index = spr_BowR;
				}
				
				obj_Link.current_state = link_state_machine.bow_and_arrow_charge;
				image_speed = 0.25;
			}	
		#endregion
		#region Shooting
			if ((keyboard_check_released(current_button)))
			{
				if (holding_bow_down == true)
				{
					sprite_index = spr_BowSD;
				}
				else if (holding_bow_right == true)
				{
					sprite_index = spr_BowSR;
				}
				else if (holding_bow_left == true)
				{
					sprite_index = spr_BowSL;	
				}
				else if (holding_bow_up == true)
				{
					sprite_index = spr_BowSU;					
				}
				image_index = 0;
				image_speed = 0.25;
				x += 0;
				y += 0;
				shooting_bow = true;
				global.current_arrows -= 1;
				instance_create_depth(x,y,depth,obj_arrow)
				#region Arrow Types
					if (fire_arrow == true) && (ice_arrow == false) && (light_arrow == false)
					{
						if (scr_spend_magic(2) == true)
						{
							obj_arrow.fire_arrow = true;
							obj_arrow.ice_arrow = false;
							obj_arrow.light_arrow = false;
						}
					}
					
					if (fire_arrow == false) && (ice_arrow == true) && (light_arrow == false)
					{
						if (scr_spend_magic(2) == true)
						{
							obj_arrow.fire_arrow = false;
							obj_arrow.ice_arrow = true;
							obj_arrow.light_arrow = false;
						}
					}
					
					if (fire_arrow == false) && (ice_arrow == false) && (light_arrow == true)
					{
						if (scr_spend_magic(4) == true)
						{
							obj_arrow.fire_arrow = false;
							obj_arrow.ice_arrow = false;
							obj_arrow.light_arrow = true;
						}
					}
				#endregion
				obj_Link.links_item_alarms_child.alarm[0] = 20;
				obj_Link.current_state = link_state_machine.bow_and_arrow_shoot_1;
			}
		#endregion
		#region Moving While Aiming		
		if (keyboard_check_direct(current_button))
		{
			if ((holding_bow_left == true) && (shooting_bow == false))
			{
				if (keyboard_check_direct(global.assigned_key_left))
				{
					x -= 2;
					sprite_index = spr_BowLW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_right))
				{
					x += 2;
					sprite_index = spr_BowLW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_up))
				{
					y -= 2;
					sprite_index = spr_BowLW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_down))
				{
					y += 2;
					sprite_index = spr_BowLW;
					image_speed = 0.25;
				}
			}
			if ((holding_bow_right == true) && (shooting_bow == false))
			{
				if (keyboard_check_direct(global.assigned_key_left))
				{
					x -= 2;
					sprite_index = spr_BowRW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_right))
				{
					x += 2;
					sprite_index = spr_BowRW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_up))
				{
					y -= 2;
					sprite_index = spr_BowRW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_down))
				{
					y += 2;
					sprite_index = spr_BowRW;
					image_speed = 0.25;
				}
			}
			if ((holding_bow_up == true) && (shooting_bow == false))
			{
				if (keyboard_check_direct(global.assigned_key_left))
				{
					x -= 2;
					sprite_index = spr_BowUW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_right))
				{
					x += 2;
					sprite_index = spr_BowUW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_up))
				{
					y -= 2;
					sprite_index = spr_BowUW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_down))
				{
					y += 2;
					sprite_index = spr_BowUW;
					image_speed = 0.25;
				}
			}
			if ((holding_bow_down == true) && (shooting_bow == false))
			{
				if (keyboard_check_direct(global.assigned_key_left))
				{
					x -= 2;
					sprite_index = spr_BowDW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_right))
				{
					x += 2;
					sprite_index = spr_BowDW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_up))
				{
					y -= 2;
					sprite_index = spr_BowDW;
					image_speed = 0.25;
				}
				if (keyboard_check_direct(global.assigned_key_down))
				{
					y += 2;
					sprite_index = spr_BowDW;
					image_speed = 0.25;
				}
				
			}
			obj_Link.links_item_alarms_child.alarm[0] = 20;
			obj_Link.current_state = link_state_machine.bow_and_arrow_walk;
		}
		#endregion
		#region Key Releases
		if (can_shoot_arrows == false)
		{
			if (holding_bow_down == true)
			{
				if (keyboard_check_released(global.assigned_key_left))
				|| (keyboard_check_released(global.assigned_key_right))
				|| (keyboard_check_released(global.assigned_key_down))
				|| (keyboard_check_released(global.assigned_key_up))
				{
					sprite_index = spr_BowD;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}			
				if (!keyboard_check_direct(global.assigned_key_left))
				&& (!keyboard_check_direct(global.assigned_key_right))
				&& (!keyboard_check_direct(global.assigned_key_down))
				&& (!keyboard_check_direct(global.assigned_key_up))
				{
					sprite_index = spr_BowD;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}
				obj_Link.links_item_alarms_child.alarm[0] = 20;	
			}
			else if (holding_bow_up == true)
			{
				if (keyboard_check_released(global.assigned_key_left))
				|| (keyboard_check_released(global.assigned_key_right))
				|| (keyboard_check_released(global.assigned_key_down))
				|| (keyboard_check_released(global.assigned_key_up))
				{
					sprite_index = spr_BowU;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}
				
				if (!keyboard_check_direct(global.assigned_key_left))
				&& (!keyboard_check_direct(global.assigned_key_right))
				&& (!keyboard_check_direct(global.assigned_key_down))
				&& (!keyboard_check_direct(global.assigned_key_up))
				{
					sprite_index = spr_BowU;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}
				obj_Link.links_item_alarms_child.alarm[0] = 20;
			}
			else if (holding_bow_right == true)
			{
				if (keyboard_check_released(global.assigned_key_left))
				|| (keyboard_check_released(global.assigned_key_right))
				|| (keyboard_check_released(global.assigned_key_down))
				|| (keyboard_check_released(global.assigned_key_up))
				{
					sprite_index = spr_BowR;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}
				
				if (!keyboard_check_direct(global.assigned_key_left))
				&& (!keyboard_check_direct(global.assigned_key_right))
				&& (!keyboard_check_direct(global.assigned_key_down))
				&& (!keyboard_check_direct(global.assigned_key_up))
				{
					sprite_index = spr_BowR;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}
				obj_Link.links_item_alarms_child.alarm[0] = 20;
			}
			else if (holding_bow_left == true)
			{
				if (keyboard_check_released(global.assigned_key_left))
				|| (keyboard_check_released(global.assigned_key_right))
				|| (keyboard_check_released(global.assigned_key_down))
				|| (keyboard_check_released(global.assigned_key_up))
				{
					sprite_index = spr_BowL;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}
				
				if (!keyboard_check_direct(global.assigned_key_left))
				&& (!keyboard_check_direct(global.assigned_key_right))
				&& (!keyboard_check_direct(global.assigned_key_down))
				&& (!keyboard_check_direct(global.assigned_key_up))
				{
					sprite_index = spr_BowL;
					image_speed = 0;
					image_index = 5;
					obj_Link.current_state = link_state_machine.bow_and_arrow_stand;
				}
				obj_Link.links_item_alarms_child.alarm[0] = 20;
			}
		}
		#endregion

	}
}


