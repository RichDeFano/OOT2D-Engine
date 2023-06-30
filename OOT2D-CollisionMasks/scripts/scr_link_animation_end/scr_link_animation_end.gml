// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_animation_end(){
#region Bow And Arrow
	if (sprite_index == spr_BowL)
	{
		image_speed = 0;
		image_index = 5;
		//can_shoot_arrows = false;
	}

	if (sprite_index == spr_BowR)
	{
		image_speed = 0;
		image_index = 5;
		//can_shoot_arrows = false;
	}

	if (sprite_index == spr_BowU)
	{
		image_speed = 0;
		image_index = 5;
		//can_shoot_arrows = false;
	}

	if (sprite_index == spr_BowD)
	{
		image_speed = 0;
		image_index = 5;
		//can_shoot_arrows = false;
	}

	if (sprite_index == spr_BowSR)
	{
		sprite_index = spr_rightS;
		obj_Link.current_state = link_state_machine.standing;
		shooting_bow = false;
		holding_bow_down = false;
		holding_bow_right = false;
		holding_bow_up = false;
		holding_bow_left = false;
	}

	if (sprite_index == spr_BowSL)
	{
		sprite_index = spr_leftS;
		obj_Link.current_state = link_state_machine.standing;
		shooting_bow = false;
		holding_bow_down = false;
		holding_bow_right = false;
		holding_bow_up = false;
		holding_bow_left = false;
	}

	if (sprite_index == spr_BowSD)
	{
		sprite_index = spr_downS;
		obj_Link.current_state = link_state_machine.standing;
		shooting_bow = false;
		holding_bow_down = false;
		holding_bow_right = false;
		holding_bow_up = false;
		holding_bow_left = false;
	}

	if (sprite_index == spr_BowSU)
	{
		sprite_index = spr_upS;
		obj_Link.current_state = link_state_machine.standing;
		shooting_bow = false;
		holding_bow_down = false;
		holding_bow_right = false;
		holding_bow_up = false;
		holding_bow_left = false;
	}
#endregion
#region Boomerang
	if (sprite_index == spr_BleftS)
	{
		sprite_index = spr_leftS;
		image_index = 5;
		image_speed = 0;
		throwing_boomerang = false;
		current_state = link_state_machine.standing;
	}

	if (sprite_index == spr_BrightS)
	{
		sprite_index = spr_rightS;
		image_index = 5;
		image_speed = 0;
		throwing_boomerang = false;
		current_state = link_state_machine.standing;
	}

	if (sprite_index == spr_BupS)
	{
		sprite_index = spr_upS;
		image_index = 5;
		image_speed = 0;
		throwing_boomerang = false;
		current_state = link_state_machine.standing;
	}

	if (sprite_index == spr_BdownS)
	{
		sprite_index = spr_downS;
		image_index = 5;
		image_speed = 0;
		throwing_boomerang = false;
		current_state = link_state_machine.standing;
	}
#endregion
#region Sword
	if ((sword_swinging == true) && (keyboard_check_direct(global.assigned_key_x_button))){can_spin_sword = true;}

	if (sprite_index == spr_down_swing)
	{
		obj_links_equipment_alarms.alarm[0] = 5;
		obj_Link.current_state = link_state_machine.standing;
		sword_swinging = false;
		sprite_index = spr_downS;
	}
	if (sprite_index == spr_up_swing)
	{
		obj_links_equipment_alarms.alarm[0] = 5;
		obj_Link.current_state = link_state_machine.standing;
		sword_swinging = false;
		sprite_index = spr_upS;
	}
	if (sprite_index == spr_left_swing)
	{
		obj_links_equipment_alarms.alarm[0] = 5;
		obj_Link.current_state = link_state_machine.standing;
		sword_swinging = false;
		sprite_index = spr_leftS;
	}
	if (sprite_index == spr_right_swing)
	{
		obj_links_equipment_alarms.alarm[0] = 5;
		obj_Link.current_state = link_state_machine.standing;
		sword_swinging = false;
		sprite_index = spr_rightS;
	}
	
	//Spinning
	if (sword_spinning == true)
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
		current_state = link_state_machine.standing;
		obj_links_equipment_alarms.alarm[0] = 10;
	}

	if (sprite_index == spr_left_spin)
	{
	sprite_index = spr_leftS;
	}

	if (sprite_index == spr_right_spin)
	{
	sprite_index = spr_rightS;
	}

	if (sprite_index == spr_up_spin)
	{
	sprite_index = spr_upS;
	}

	if (sprite_index == spr_down_spin)
	{
	sprite_index = spr_downS;
	}
#endregion
#region Hammer
	if (sprite_index == spr_hammer_left)
	{
		sprite_index = spr_leftS;
		image_index = 5;
		image_speed = 0;
		swinging_hammer = false;
		current_state = link_state_machine.standing;
	}
	if (sprite_index == spr_hammer_right)
	{
		sprite_index = spr_rightS;
		image_index = 5;
		image_speed = 0;
		swinging_hammer = false;
		current_state = link_state_machine.standing;
	}
	if (sprite_index == spr_hammer_up)
	{
		sprite_index = spr_upS;
		image_index = 5;
		image_speed = 0;
		swinging_hammer = false;
		current_state = link_state_machine.standing;
	}
	if (sprite_index == spr_hammer_down)
	{
		sprite_index = spr_downS;
		image_index = 5;
		image_speed = 0;
		swinging_hammer = false;
		current_state = link_state_machine.standing;
	}
#endregion
#region Grabs and Throws
///Holding
	if (sprite_index == spr_LRight)
	{
		holding = true;
		sprite_index = spr_LRightS;
	}

	if (sprite_index == spr_LLeft)
	{
		holding = true;
		sprite_index = spr_LLeftS;
	}

	if (sprite_index == spr_LUp)
	{
		holding = true;
		sprite_index = spr_LUpS;
	}

	if (sprite_index == spr_LDown)
	{
		holding = true;
		sprite_index = spr_LDownS;
	}
	
//Throwing
	if (sprite_index == spr_ThrowUp)
	{
		throwing = false;
		holding = false;
		setting = false;
		current_state = link_state_machine.standing;
		stop_lift = false;
		can_lift  = true;
		sprite_index = spr_upS;
	}

	if (sprite_index == spr_ThrowDown)
	{
		throwing = false;
		holding = false;
		setting = false;
		current_state = link_state_machine.standing;
		stop_lift = false;
		can_lift  = true;
		sprite_index = spr_downS;
	}

	if (sprite_index == spr_ThrowLeft)
	{
		throwing = false;
		holding = false;
		setting = false;
		stop_lift = false;
		current_state = link_state_machine.standing;
		can_lift  = true;
		sprite_index = spr_leftS;
	}

	if (sprite_index == spr_ThrowRight)
	{
		throwing = false;
		holding = false;
		setting = false;
		current_state = link_state_machine.standing;
		stop_lift = false;
		can_lift  = true;
		sprite_index = spr_rightS;
	}
#endregion
}