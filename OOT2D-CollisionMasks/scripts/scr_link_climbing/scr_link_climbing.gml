// Cript assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_climbing(){
#region Moving while Climbing
	if ((keyboard_check_direct(global.assigned_key_left)) && (can_climb == true))
	{
		current_xspeed = -1;
		sprite_index = spr_leftC;
		image_speed = 0.25;
		current_state = link_state_machine.climbing;
	}
	if ((keyboard_check_direct(global.assigned_key_right)) && (can_climb == true))
	{
		current_xspeed = 1;
		sprite_index = spr_rightC;
		image_speed = 0.25;
		current_state = link_state_machine.climbing;
	}
	if ((keyboard_check_direct(global.assigned_key_up)) && (can_climb == true))
	{
		current_yspeed = -1;
		sprite_index = spr_upC;
		image_speed = 0.25;
		current_state = link_state_machine.climbing;
	}
	if ((keyboard_check_direct(global.assigned_key_down)) && (can_climb == true))
	{
		current_yspeed = 1;
		sprite_index = spr_downC;
		image_speed = 0.25;
		current_state = link_state_machine.climbing;
	}
#endregion
#region Key Releases
	if ((keyboard_check_released(global.assigned_key_left)) && (can_climb == true))
	{
		sprite_index = spr_leftC;
		image_speed = 0;
		current_xspeed = 0;
		current_state = link_state_machine.climbing;
	}
	if ((keyboard_check_released(global.assigned_key_right)) && (can_climb == true))
	{
		sprite_index = spr_rightC;
		current_xspeed = 0;
		image_speed = 0;
		current_state = link_state_machine.climbing;
	}
	if ((keyboard_check_released(global.assigned_key_up)) && (can_climb == true))
	{
		sprite_index = spr_upC;
		image_speed = 0;
		current_state = link_state_machine.climbing;
		current_yspeed = 0;
	}
	if ((keyboard_check_released(global.assigned_key_down)) && (can_climb == true))
	{
		sprite_index = spr_downC;
		image_speed = 0;
		current_state = link_state_machine.climbing;
		current_yspeed = 0;
	}
#endregion

#region Collisions and Movement
if (can_climb == true)
{
	scr_key_checks(spr_upC,spr_downC, spr_leftC, spr_rightC);
	//image_speed = 0;
}
#endregion


}


	/*
/////////////////////////////////////////Some code that makes the next part possible/////////////////////////////////////////
		if keyboard_check_direct(global.assigned_key_down) and !keyboard_check_direct(global.assigned_key_up) and !keyboard_check_direct(global.assigned_key_right) and !keyboard_check_direct(global.assigned_key_left)
		{keyboard_lastkey = global.assigned_key_down}

		if keyboard_check_direct(global.assigned_key_up) and !keyboard_check_direct(global.assigned_key_down) and !keyboard_check_direct(global.assigned_key_right) and !keyboard_check_direct(global.assigned_key_left)
		{keyboard_lastkey = global.assigned_key_up}

		if keyboard_check_direct(global.assigned_key_right) and !keyboard_check_direct(global.assigned_key_up) and !keyboard_check_direct(global.assigned_key_down) and !keyboard_check_direct(global.assigned_key_left)
		{keyboard_lastkey = global.assigned_key_right}

		if keyboard_check_direct(global.assigned_key_left) and !keyboard_check_direct(global.assigned_key_down) and !keyboard_check_direct(global.assigned_key_right) and !keyboard_check_direct(global.assigned_key_up)
		{keyboard_lastkey = global.assigned_key_left}
	
/////////////////////////////////////////Getting the sprites to setup correctly when more then 1 key is pressed/////////////////////////////////////////
		if keyboard_check_direct(global.assigned_key_down) and keyboard_check_direct(global.assigned_key_up)
		{
			if keyboard_lastkey = global.assigned_key_down
				{sprite_index = spr_upC x+=0 x-=0 y+=0 y-=0 }
			if keyboard_lastkey = global.assigned_key_up
				{sprite_index = spr_downC x+=0 x-=0 y+=0 y-=0 }
		}

		if keyboard_check_direct(global.assigned_key_right) and keyboard_check_direct(global.assigned_key_left)
		{
			if keyboard_lastkey = global.assigned_key_right
				{sprite_index = spr_leftC x+=0 x-=0 y+=0 y-=0 }
			if keyboard_lastkey = global.assigned_key_left
				{sprite_index = spr_rightC x+=0 x-=0 y+=0 y-=0 }
		}
	
/////////////////////////////////////////Move Engine/////////////////////////////////////////
	_move_x = keyboard_check(global.assigned_key_right) - keyboard_check(global.assigned_key_left);
	_move_y = keyboard_check(global.assigned_key_down) - keyboard_check(global.assigned_key_up);

	move_and_collide(_move_x * 1, _move_y * 1, obj_wall_parent, 1, 0, 0, 1, 1);
	*/