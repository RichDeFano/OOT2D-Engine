// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_equipment_shield(){
#region GFX
	var spr_shieldD, spr_shieldU, spr_shieldL, spr_shieldR;
	if (global.equipped_kokiri_shield == true)
	{
		spr_shieldD = spr_shield1D;
		spr_shieldU = spr_shield1U;
		spr_shieldR = spr_shield1R;
		spr_shieldL = spr_shield1L;	
	}
	else if (global.equipped_hylian_shield == true)
	{
		spr_shieldD = spr_shield2D;
		spr_shieldU = spr_shield2U;
		spr_shieldR = spr_shield2R;
		spr_shieldL = spr_shield2L;	
	}
	else if (global.equipped_mirror_shield == true)
	{
		spr_shieldD = spr_shield3D;
		spr_shieldU = spr_shield3U;
		spr_shieldR = spr_shield3R;
		spr_shieldL = spr_shield3L;	
	}
	
#endregion

#region Using Shield
	if (keyboard_check(global.assigned_key_right_trigger))
	{
		if (sprite_index == spr_left) || (sprite_index == spr_leftS)
		{
			x -= 0;
			sprite_index = spr_shieldL;
		}
		if ((sprite_index == spr_right) || (sprite_index == spr_rightS))
		{
			x += 0;
			sprite_index = spr_shieldR;
		}
		if ((sprite_index == spr_up) || (sprite_index == spr_upS))
		{
			y -= 0;
			sprite_index = spr_shieldU;
		}
		if ((sprite_index == spr_down) || (sprite_index == spr_downS))
		{
			y += 0;
			sprite_index = spr_shieldD;
		}
	
		current_state = link_state_machine.shield;
	
	}
	if (keyboard_check_released(global.assigned_key_right_trigger))
	{
		if ((sprite_index == spr_shieldL) || (sprite_index == spr_shieldL))
		{
			sprite_index = spr_leftS;
			current_state = link_state_machine.standing;
		}
	

		if ((sprite_index == spr_shieldR) ||  (sprite_index == spr_shieldR))
		{
			sprite_index = spr_rightS;
			current_state = link_state_machine.standing;
		}

		if ((sprite_index == spr_shieldU) || (sprite_index == spr_shieldU))
		{
			sprite_index = spr_upS;
			current_state = link_state_machine.standing;
		}

		if ((sprite_index == spr_shieldD) || (sprite_index == spr_shieldD))
		{
			sprite_index = spr_downS;
			current_state = link_state_machine.standing;
		}
	}
#endregion
}