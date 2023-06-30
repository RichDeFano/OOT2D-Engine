/// @description ////////////////////////////////////////////////
function scr_roll_hit() {
	var hasSeen = false;
	if (place_meeting(x-6,y,obj_wall_parent))
	{
		current_state = link_state_machine.rolling_hit;
		link_movement_alarm.alarm[0] = 16;
		image_speed = .3;
		hasSeen = true;
		current_xspeed = 0;
		current_yspeed = 0;
	}
	if (hasSeen == true)
	{
		if (sprite_index == spr_RightRoll){sprite_index = spr_RRollHit;}
		if (sprite_index == spr_LeftRoll){sprite_index = spr_LRollHit;}
		if (sprite_index == spr_UpRoll){sprite_index = spr_URollHit;}
		if (sprite_index == spr_DownRoll){sprite_index = spr_DRollHit;}
	}	
	
	return hasSeen;
}
