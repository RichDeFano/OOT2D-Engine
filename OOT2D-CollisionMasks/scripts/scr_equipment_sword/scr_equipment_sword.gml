// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_equipment_sword(){
	
#endregion
if ((global.equipped_biggoron_sword == true) || (global.equipped_master_sword == true) || (global.equipped_kokiri_sword == true))
	{
		#region Directional Slashes
		if ((keyboard_check_direct(global.assigned_key_x_button)) && (can_swing_sword == true))
		{
			if ((sprite_index == spr_right) || (sprite_index == spr_rightS))
			{
				sword_swing_right = true;
				sprite_index = spr_right_swing;
			}
			if ((sprite_index == spr_left) || (sprite_index == spr_leftS))
			{
				sword_swing_left = true;
				sprite_index = spr_left_swing;
			}
			if ((sprite_index == spr_down) || (sprite_index == spr_downS))
			{
				sword_swing_down = true;
				sprite_index = spr_down_swing;
			}
			if ((sprite_index == spr_up) || (sprite_index == spr_upS))
			{
				sword_swing_up = true;
				sprite_index = spr_up_swing;
			}
	
			current_state = link_state_machine.sword;
			image_index = 0;
			image_speed = 0.8;
			sword_swinging = true;
			can_swing_sword = false;
			image_speed = 0.8;
			//instance_create_depth(x, y, obj_sword_mask);
			obj_links_equipment_alarms.alarm[0] = 15;
		}
		#endregion
	
		#region Sword Spin
			///Ready Spin
			if ((can_spin_sword == true) && (current_state != link_state_machine.sword_spin_hold))
			{
				if 	((sprite_index == spr_downS) || (sprite_index = spr_down_swing))
					{
						sword_spin_ready_down = true;
						sprite_index = spr_down_spin_stand;
					}
				else if ((sprite_index == spr_leftS) || (sprite_index == spr_left_swing))
					{
						sword_spin_ready_left = true;
						sprite_index = spr_left_spin_stand;
					}
				else if ((sprite_index == spr_rightS) || (sprite_index == spr_right_swing))
					{
						sword_spin_ready_right = true;
						sprite_index = spr_right_spin_stand;
					}
				else if ((sprite_index == spr_upS) || (sprite_index == spr_up_swing))
					{
						sword_spin_ready_up = true;
						sprite_index = spr_up_spin_stand;
					}
			
				current_state = link_state_machine.sword_spin_hold;
				obj_links_equipment_alarms.alarm[1] = 20;
				//instance_create_depth(x, y, depth, LinkSwordReady);
			}

			///Spinning
			if ((keyboard_check_released(global.assigned_key_x_button)) && (can_spin_sword == true))
			{
				if (sword_spin_ready_down == true)
				{
					sprite_index = spr_down_spin;
				}
				else if (sword_spin_ready_left == true)
				{
					sprite_index = spr_left_spin;
				}
				else if (sword_spin_ready_right == true)
				{
					sprite_index = spr_right_spin;
				}
				else if (sword_spin_ready_up == true)
				{
					sprite_index = spr_up_spin;
				}
		
				current_state = link_state_machine.sword_spin;
				sword_spinning = true;
				can_spin_sword = false;
				image_speed = 1.6;
				//instance_create_depth(x, y, depth, LinkSpin);
			}
	
			//Holding a Charge
			if ((current_state = link_state_machine.sword_spin_hold) && (sword_spinning == false))
			{
				if (keyboard_check_direct(global.assigned_key_left)){x -= 2;}
				if (keyboard_check_direct(global.assigned_key_right)){x += 2;}
				if (keyboard_check_direct(global.assigned_key_up)){y -= 2;}
				if (keyboard_check_direct(global.assigned_key_down)){y += 2;}
		
				if (sword_spin_ready_left == true){sprite_index = spr_left_spin_walk;}
				else if (sword_spin_ready_right == true){sprite_index = spr_right_spin_walk;}
				else if (sword_spin_ready_up == true){sprite_index = spr_up_spin_walk;}
				else if (sword_spin_ready_down == true){sprite_index = spr_down_spin_walk;}
		
				current_state = link_state_machine.sword_spin_hold;
				image_speed = 0.25;
		
				if ((keyboard_check_released(global.assigned_key_left))
				|| (keyboard_check_released(global.assigned_key_right))
				|| (keyboard_check_released(global.assigned_key_up))
				|| (keyboard_check_released(global.assigned_key_down)))
				{
					if (sword_spin_ready_down == true){sprite_index = spr_down_spin_stand;}
					else if (sword_spin_ready_up == true){sprite_index = spr_up_spin_stand;}
					else if (sword_spin_ready_right == true){sprite_index = spr_right_spin_stand;}
					else if (sword_spin_ready_left == true){sprite_index = spr_left_spin_stand;}
					image_speed = 0;	
				}
			}

			//Key Release too Early
			if ((keyboard_check_released(global.assigned_key_x_button)) && (obj_links_equipment_alarms.alarm[7] > 0))
			{
				can_swing_sword = false;
				can_spin_sword = false;
				can_start_spin = false;
		
				sword_swinging = false;
				sword_spinning = false;
		
				sword_swing_up = false;
				sword_swing_down = false;
				sword_swing_right = false;
				sword_swing_left = false;
		
				sword_spin_ready_down = false;
				sword_spin_ready_up = false;
				sword_spin_ready_left = false;
				sword_spin_ready_right = false;
				obj_links_equipment_alarms.alarm[1] = -1
				current_state = link_state_machine.standing;
		/*
				if (sword_spin_ready_down == true){sprite_index = spr_downS;}
				else if (sword_spin_ready_right == true){sprite_index = spr_rightS;}
				else if (sprite_index == spr_spin_ready_left){sprite_index = spr_leftS;}
				else if (sprite_index == spr_spin_ready_up){sprite_index = spr_upS;}
				*/
			}

		#endregion
	
	}
}



	/*
	Old beam code - 
	if global.canbeam = true and global.swordbeamunlocked = true and global.hp >= global.maxhp
	{
	instance_create(x,y,SwordBeam)
	global.canbeam = false
	LinksAlarms.alarm[2] = 25
	}
	*/