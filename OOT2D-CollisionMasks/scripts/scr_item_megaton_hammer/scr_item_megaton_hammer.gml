// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_item_megaton_hammer(current_button){
	if ((can_swing_hammer == true) && (keyboard_check_pressed(current_button)))
	{
		#region D-Pad Directions
			if (((sprite_index == spr_left) || (sprite_index == spr_leftS))
			&& (!keyboard_check_direct(global.assigned_key_up)) 
			&& (!keyboard_check_direct(global.assigned_key_down)) 
			&& (!keyboard_check_direct(global.assigned_key_right)))
			{
				x -= 0;
				sprite_index = spr_hammer_left;
				image_index = 0;
				image_speed = 0.25;
				swinging_hammer = true;
				can_swing_hammer = false;
				current_state = link_state_machine.hammer;
				obj_links_item_alarms.alarm[1] = 25;
			}
			else if (((sprite_index == spr_right) || (sprite_index == spr_rightS))
			&& (!keyboard_check_direct(global.assigned_key_up)) 
			&& (!keyboard_check_direct(global.assigned_key_down))
			&& (!keyboard_check_direct(global.assigned_key_left)))
			{
				x += 0;
				sprite_index = spr_hammer_right;
				image_speed = 0.25;
				image_index = 0;
				swinging_hammer = true;
				can_swing_hammer = false;
				current_state = link_state_machine.hammer;
				obj_links_item_alarms.alarm[1] = 25;
			}
			else if (((sprite_index == spr_up) || (sprite_index == spr_upS)) 
			&& (!keyboard_check_direct(global.assigned_key_right)) 
			&& (!keyboard_check_direct(global.assigned_key_down))
			&& (!keyboard_check_direct(global.assigned_key_left)))
			{
				y -= 0;
				sprite_index = spr_hammer_up;
				image_speed = 0.25;
				image_index = 0;
				swinging_hammer = true;
				can_swing_hammer = false;
				current_state = link_state_machine.hammer;
				obj_links_item_alarms.alarm[1] = 25;
			}
			else if (((sprite_index = spr_down) || (sprite_index = spr_downS))
			&& (!keyboard_check_direct(global.assigned_key_up)) 
			&& (!keyboard_check_direct(global.assigned_key_right)) 
			&& (!keyboard_check_direct(global.assigned_key_left)))
			{
				y += 0;
				sprite_index = spr_hammer_down;
				image_speed = 0.25;
				image_index = 0;
				swinging_hammer = true;
				can_swing_hammer = false;
				current_state = link_state_machine.hammer;
				obj_links_item_alarms.alarm[1] = 25;
			}
		#endregion

	}
}