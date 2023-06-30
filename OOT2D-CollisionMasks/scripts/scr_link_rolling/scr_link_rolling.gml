/// @description ////////Rolling///////////
function scr_link_rolling() {
	if keyboard_check_pressed(global.assigned_key_z_button)
	{
		if (canroll == true)
		{
			if (current_state != link_state_machine.rolling)
			{
				if (sprite_index == spr_right)
				{
					current_xspeed = 5;
					sprite_index = spr_RightRoll;
					current_state = link_state_machine.rolling;
				}

				if (sprite_index == spr_left)
				{
					current_xspeed = -5;
					sprite_index = spr_LeftRoll;
					current_state = link_state_machine.rolling;
				}

				if (sprite_index == spr_down)
				{
					current_yspeed = 5;
					sprite_index = spr_DownRoll;
					current_state = link_state_machine.rolling;
				}

				if (sprite_index == spr_up)
				{
					current_yspeed = -5;
					sprite_index = spr_UpRoll;
					current_state = link_state_machine.rolling;
				}
						
				
				image_index = 0;
				image_speed = 0.6;
				//links_movement_alarms_child.alarm[0] = 16;
				//links_movement_alarms_child.alarm[1] = 1;				//rolling = true;
				links_movement_alarms_child.alarm[0] = 16;
				canroll = false;
				scr_key_checks(spr_UpRoll, spr_DownRoll, spr_LeftRoll, spr_RightRoll);
				
			}
		}
	}
}
