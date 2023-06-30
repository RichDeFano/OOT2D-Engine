/// @description Stopping Roll
with (obj_Link)
{
	if (sprite_index == spr_DownRoll)
	{
	//rolling = false;
	sprite_index = spr_downS;
	}

	if (sprite_index == spr_UpRoll)
	{
	//rolling = false;
	sprite_index = spr_upS;
	}

	if (sprite_index == spr_LeftRoll)
	{
	//rolling = false;
	sprite_index = spr_leftS;
	}

	if (sprite_index == spr_RightRoll)
	{
	//rolling = false;
	sprite_index = spr_rightS;
	}
}
obj_Link.current_state = link_state_machine.standing;
alarm[1] = 5;


