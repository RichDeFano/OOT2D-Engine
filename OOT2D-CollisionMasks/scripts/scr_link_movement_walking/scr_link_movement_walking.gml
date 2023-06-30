// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_movement_walking(){
	

	if (moveallowed == true)
	{
/////////////////////////////////////////Moving in all 8 directions/////////////////////////////////////////
		if keyboard_check_direct(global.assigned_key_left)// && (!place_meeting(x-4,y,obj_wall_parent)))
		{
		//x -= 4
		//hsp = -4;
		current_xspeed = -4;
		sprite_index = spr_left
		image_speed = 0.5
		current_state = link_state_machine.walking;
		}

		if keyboard_check_direct(global.assigned_key_right)// && (!place_meeting(x+4,y,obj_wall_parent)))
		{
		//x += 4
		//hsp = 4;
		current_xspeed = 4;
		sprite_index = spr_right
		image_speed = 0.5
		current_state = link_state_machine.walking;
		}

		if keyboard_check_direct(global.assigned_key_up)//&& (!place_meeting(x,y-4,obj_wall_parent)))
		{
		//y -= 4
		//vsp = -4
		current_yspeed = -4;
		sprite_index = spr_up
		image_speed = 0.5
		current_state = link_state_machine.walking;
		}

		if keyboard_check_direct(global.assigned_key_down) //&& (!place_meeting(x,y+4,obj_wall_parent)))
		{
		//y += 4
		//vsp = 4;
		current_yspeed = 4;
		sprite_index = spr_down
		image_speed = 0.5
		current_state = link_state_machine.walking;
		}

/////////////////////////////////////////Key releases/////////////////////////////////////////
		if keyboard_check_released(global.assigned_key_left)
		{
		current_xspeed = 0;
		if (!keyboard_check(global.assigned_key_right) and !keyboard_check(global.assigned_key_up) and !keyboard_check(global.assigned_key_down))
			{
				current_state = link_state_machine.standing;
				sprite_index = spr_leftS;
			}
		}

		if keyboard_check_released(global.assigned_key_right)
		{
		current_xspeed = 0;
		if (!keyboard_check(global.assigned_key_left) and !keyboard_check(global.assigned_key_up) and !keyboard_check(global.assigned_key_down))
			{
				current_state = link_state_machine.standing;
				sprite_index = spr_rightS
			}
		}

		if keyboard_check_released(global.assigned_key_up)
		{
		current_yspeed = 0;
		if (!keyboard_check(global.assigned_key_right) and !keyboard_check(global.assigned_key_left) and !keyboard_check(global.assigned_key_down))
			{
				current_state = link_state_machine.standing;
				sprite_index = spr_upS
			}
		}

		if keyboard_check_released(global.assigned_key_down)
		{
		current_yspeed = 0;
		if (!keyboard_check(global.assigned_key_right) and !keyboard_check(global.assigned_key_up) and !keyboard_check(global.assigned_key_left))
			{
				sprite_index = spr_downS
				current_state = link_state_machine.standing;
			}
		}
	
	scr_key_checks(spr_upS, spr_downS, spr_leftS, spr_rightS)
	}

}