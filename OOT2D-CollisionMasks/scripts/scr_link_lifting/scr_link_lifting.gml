// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_lifting(){

#region Lifting
	if ((can_lift == true) && (keyboard_check_pressed(global.assigned_key_z_button)))
	{
		if ((lifted_throw == false) && (lifted_set == false))
		{
			if ((sprite_index == spr_right) || (sprite_index == spr_rightS))
			{
				sprite_index = spr_LRight;
			}

			if ((sprite_index == spr_left) || (sprite_index == spr_leftS))
			{
				sprite_index = spr_LLeft;
			}

			if ((sprite_index == spr_down) || (sprite_index == spr_downS))
			{
				sprite_index = spr_LDown;
			}

			if ((sprite_index == spr_up) || (sprite_index == spr_upS))
			{
				sprite_index = spr_LUp;
			}
			image_speed = 0.3;
			lifting = true;
			current_lift = instance_nearest(x,y,obj_lift_mask);
			current_lift.alarm[0] = 3;
			current_lift.selected = true;
			current_state = link_state_machine.lifting;
			can_lift = false;
		}
	}
#endregion
#region Holding
	///Walking with Holding
	if ((lifted_throw == false) && (lifted_set == false))
	{
		if (holding == true)
		{
			if (keyboard_check_direct(global.assigned_key_left))
			{
				current_xspeed = -4;
				sprite_index = spr_LLeftW;
				current_state = link_state_machine.holding_walk;
				can_lift_set = false;
				can_lift_throw = true;
				image_speed = 0.4;
			}

			if (keyboard_check_direct(global.assigned_key_right)) 
			{
				current_xspeed = 4;
				sprite_index = spr_LRightW;
				current_state = link_state_machine.holding_walk;
				can_lift_set = false;
				can_lift_throw = true;
				image_speed = 0.4;
			}

			if (keyboard_check_direct(global.assigned_key_up))
			{
				current_yspeed = -4;
				sprite_index = spr_LUpW;
				current_state = link_state_machine.holding_walk;
				can_lift_set = false;
				can_lift_throw = true;
				image_speed = 0.4;
			}

			if (keyboard_check_direct(global.assigned_key_down))
			{
				current_yspeed = 4;
				sprite_index = spr_LDownW;
				current_state = link_state_machine.holding_walk;
				can_lift_set = false;
				can_lift_throw = true;
				image_speed = 0.4;
			}
		}
		
	}
	///Standing While Holding
	if ((lifted_throw == false) && (lifted_set == false))
	{
		if (holding == true)
		{
			if ((keyboard_check_released(global.assigned_key_left)) 
			&& (!keyboard_check(global.assigned_key_right))
			&& (!keyboard_check(global.assigned_key_up)) 
			&& (!keyboard_check(global.assigned_key_down)))
			{
				current_xspeed = 0;
				sprite_index = spr_LLeftS;
				current_state = link_state_machine.holding_stand;
				can_lift_set = true;
				can_lift_throw = false;
			}

			if ((keyboard_check_released(global.assigned_key_right)) 
			&& (!keyboard_check(global.assigned_key_left))
			&& (!keyboard_check(global.assigned_key_up))
			&& (!keyboard_check(global.assigned_key_down)))
			{
				current_xspeed = 0;
				sprite_index = spr_LRightS;
				current_state = link_state_machine.holding_stand;
				can_lift_set = true;
				can_lift_throw = false;
			}

			if ((keyboard_check_released(global.assigned_key_up)) 
			&& (!keyboard_check(global.assigned_key_right))
			&& (!keyboard_check(global.assigned_key_left)) 
			&& (!keyboard_check(global.assigned_key_down))) 
			{
				current_yspeed = 0;
				sprite_index = spr_LUpS;
				current_state = link_state_machine.holding_stand;
				can_lift_set = true;
				can_lift_throw = false;
			}

			if ((keyboard_check_released(global.assigned_key_down)) 
			&& (!keyboard_check(global.assigned_key_right)) 
			&& (!keyboard_check(global.assigned_key_up)) 
			&& (!keyboard_check(global.assigned_key_left))) 
			{
				current_yspeed = 0;
				sprite_index = spr_LDownS;
				current_state = link_state_machine.holding_stand;
				can_lift_set = true;
				can_lift_throw = false;
			}
		
	}
	}
#endregion
#region Throwing
if ((holding == true) && (can_lift_throw == true) && (keyboard_check_direct(global.assigned_key_z_button)))
{
		if ((sprite_index == spr_LUpW) || (sprite_index = spr_LUp))
		{
			sprite_index = spr_ThrowUp;
			image_speed = 0.6;
			throw_up = true;
		}

		if ((sprite_index = spr_LDownW) || (sprite_index = spr_LDown))
		{
			sprite_index = spr_ThrowDown;
			image_speed = 0.6;
			throw_down = true;
		}

		if ((sprite_index = spr_LLeftW) || (sprite_index = spr_LLeft))
		{
			sprite_index = spr_ThrowLeft;
			image_speed = 0.6;
			throw_left = true;
		}

		if ((sprite_index = spr_LRightW) || (sprite_index = spr_LRight))
		{
			sprite_index = spr_ThrowRight;
			image_speed = 0.6;
			throw_right = true;
		}
		
		current_state = link_state_machine.throwing;
		throwing = true;
		lifted_throw = true;
		can_lift_throw = false;
}
#endregion
#region Setting Down
if ((holding == true) && (can_lift_set == true) && (keyboard_check_direct(global.assigned_key_z_button)))
{
		if (sprite_index == spr_LUpS)
		{
			sprite_index = spr_ThrowUp;
			image_speed = 0.6;
			current_state = link_state_machine.setting;
			lifted_set = true;
			setting = true;
			set_up = true;
		}

		if (sprite_index == spr_LDownS)
		{
			sprite_index = spr_ThrowDown;
			image_speed = 0.6;
			current_state = link_state_machine.setting;
			setting = true;
			lifted_set = true;
			set_down = true;
		}

		if (sprite_index == spr_LLeftS)
		{
			sprite_index = spr_ThrowLeft;
			image_speed = 0.6;
			current_state = link_state_machine.setting;
			setting = true;
			lifted_set = true;
			set_left = true;
		}

		if (sprite_index == spr_LRightS)
		{
			sprite_index = spr_ThrowRight;
			image_speed = 0.6;
			current_state = link_state_machine.setting;
			setting = true;
			lifted_set = true;
			set_right = true;
		}
}
#endregion
#region Lastkeys
if (holding == true)
{
	scr_key_checks(spr_LUpS,spr_LDownS, spr_LLeftS, spr_LRightS);
}
#endregion

}

