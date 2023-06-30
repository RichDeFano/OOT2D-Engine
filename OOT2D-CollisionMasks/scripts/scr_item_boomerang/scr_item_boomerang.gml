// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_item_boomerang(current_button){
	if (!(instance_exists(obj_boomerang)) && (can_throw_boomerang == true) && (keyboard_check_pressed(current_button)))
	{
		#region D-Pad Directions
			if (((sprite_index == spr_left) || (sprite_index == spr_leftS))
			&& (!keyboard_check_direct(global.assigned_key_up)) 
			&& (!keyboard_check_direct(global.assigned_key_down)) 
			&& (!keyboard_check_direct(global.assigned_key_right)))
			{
				x -= 0;
				sprite_index = spr_BleftS;
				image_index = 0;
				image_speed = 0.5;
				instance_create_depth(x, y, depth, obj_boomerang);
				throwing_boomerang = true;
				can_throw_boomerang = false;
				boomerang_left = true;
				current_state = link_state_machine.boomerang;
			}
			else if (((sprite_index == spr_right) || (sprite_index == spr_rightS))
			&& (!keyboard_check_direct(global.assigned_key_up)) 
			&& (!keyboard_check_direct(global.assigned_key_down))
			&& (!keyboard_check_direct(global.assigned_key_left)))
			{
				x += 0;
				sprite_index = spr_BrightS;
				image_speed = 0.5;
				image_index = 0;
				instance_create_depth(x, y, depth, obj_boomerang);
				throwing_boomerang = true;
				can_throw_boomerang = false;
				boomerang_right = true;
				current_state = link_state_machine.boomerang;
			}
			else if (((sprite_index == spr_up) || (sprite_index == spr_upS)) 
			&& (!keyboard_check_direct(global.assigned_key_right)) 
			&& (!keyboard_check_direct(global.assigned_key_down))
			&& (!keyboard_check_direct(global.assigned_key_left)))
			{
				y -= 0;
				sprite_index = spr_BupS;
				image_speed = 0.5;
				image_index = 0;
				instance_create_depth(x, y, depth, obj_boomerang);
				throwing_boomerang = true;
				can_throw_boomerang = false;
				boomerang_up = true;
				current_state = link_state_machine.boomerang;
			}
			else if (((sprite_index = spr_down) || (sprite_index = spr_downS))
			&& (!keyboard_check_direct(global.assigned_key_up)) 
			&& (!keyboard_check_direct(global.assigned_key_right)) 
			&& (!keyboard_check_direct(global.assigned_key_left)))
			{
				y += 0;
				sprite_index = spr_BdownS;
				image_speed = 0.5;
				image_index = 0;
				instance_create_depth(x, y, depth, obj_boomerang);
				throwing_boomerang = true;
				can_throw_boomerang = false;
				boomerang_down = true;
				current_state = link_state_machine.boomerang;
			}
		#endregion
		#region Diagonal Directions
			else if keyboard_check_direct(global.assigned_key_up) and keyboard_check_direct(global.assigned_key_right)
			{
				y += 0;
				sprite_index = spr_BupS;
				image_speed = 0.5;
				image_index = 0;
				can_throw_boomerang = false;
				throwing_boomerang = true;
				boomerang_up_right = true;
				if (!instance_exists(obj_boomerang)){instance_create_depth(x, y, depth, obj_boomerang);}
				current_state = link_state_machine.boomerang;
			}
			else if keyboard_check_direct(global.assigned_key_up) and keyboard_check_direct(global.assigned_key_left)
			{
				y += 0;
				sprite_index = spr_BupS;
				image_speed = 0.5
				image_index = 0;
				can_throw_boomerang = false;
				throwing_boomerang = true;
				boomerang_up_left = true;
				if (!instance_exists(obj_boomerang)){instance_create_depth(x, y, depth, obj_boomerang);}
				current_state = link_state_machine.boomerang;
			}
			else if keyboard_check_direct(global.assigned_key_down) and keyboard_check_direct(global.assigned_key_right)
			{
				y += 0;
				sprite_index = spr_BdownS;
				image_speed = 0.5;
				image_index = 0;
				can_throw_boomerang = false;
				throwing_boomerang = true;
				boomerang_down_right = true;
				if (!instance_exists(obj_boomerang)){instance_create_depth(x, y, depth, obj_boomerang);}
				current_state = link_state_machine.boomerang;
			}
			else if keyboard_check_direct(global.assigned_key_down) and keyboard_check_direct(global.assigned_key_left)
			{
				y += 0;
				sprite_index = spr_BdownS;
				image_speed = 0.5;
				image_index = 0;
				can_throw_boomerang = false;
				throwing_boomerang = true;
				boomerang_down_left = true;
				if (!instance_exists(obj_boomerang)){instance_create_depth(x, y, depth, obj_boomerang);}
				current_state = link_state_machine.boomerang;
			}
		#endregion
	}
}