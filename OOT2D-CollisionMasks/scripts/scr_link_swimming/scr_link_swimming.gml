// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_swimming(){

	if (swim_in_water == true)
	{
		//Meduim water - Swimming on top, diving
		if ((swim_in_deep_water == true))
		{
		#region Swimming Stand
			if keyboard_check_released(global.assigned_key_left) 
			{
				sprite_index = spr_WleftS;
				current_state = link_state_machine.swimming_stand;
				current_xspeed = 0;
			}
			if keyboard_check_released(global.assigned_key_right) 
			{
				sprite_index = spr_WrightS;
				current_state = link_state_machine.swimming_stand;
				current_xspeed = 0;
			}
			if keyboard_check_released(global.assigned_key_up) 
			{
				current_yspeed = 0;
				sprite_index = spr_WupS;
				current_state = link_state_machine.swimming_stand;
			}
			if keyboard_check_released(global.assigned_key_down) 
			{
				current_yspeed = 0;
				sprite_index = spr_WdownS;
				current_state = link_state_machine.swimming_stand;
			}
		#endregion
		#region Swimming Walk
			if keyboard_check_direct(global.assigned_key_left)
			{
				sprite_index = spr_Wleft;
				image_speed = 0.2;
				current_state = link_state_machine.swimming_walk;
				current_xspeed = -3;
			}
			if keyboard_check_direct(global.assigned_key_right)
			{
				sprite_index = spr_Wright;
				image_speed = 0.2;
				current_state = link_state_machine.swimming_walk;
				current_xspeed = 3;
			}
			if keyboard_check_direct(global.assigned_key_up)
			{
				sprite_index = spr_Wup;
				image_speed = 0.2;
				current_state = link_state_machine.swimming_walk;
				current_yspeed = -3;
			}
			if keyboard_check_direct(global.assigned_key_down)
			{
				sprite_index = spr_Wdown;
				image_speed = 0.2;
				current_state = link_state_machine.swimming_walk;
				current_yspeed = 3;
			}
		#endregion
		}
		
		//Iron Boots - Treat as terrain, Sink to bottom
		if ((swim_in_deep_water == true) && (global.equipped_iron_boots == true))
		{
			
		}
	scr_key_checks(spr_WupS, spr_WdownS, spr_WleftS, spr_WrightS);
	}
	
	
}
	/*
		/////////Some code that makes the next part possible///
	if keyboard_check_direct(global.DOWN) and !keyboard_check_direct(global.UP) and !keyboard_check_direct(global.RIGHT) and !keyboard_check_direct(global.LEFT)
	{keyboard_lastkey = global.DOWN}

	if keyboard_check_direct(global.UP) and !keyboard_check_direct(global.DOWN) and !keyboard_check_direct(global.RIGHT) and !keyboard_check_direct(global.LEFT)
	{keyboard_lastkey = global.UP}

	if keyboard_check_direct(global.RIGHT) and !keyboard_check_direct(global.UP) and !keyboard_check_direct(global.DOWN) and !keyboard_check_direct(global.LEFT)
	{keyboard_lastkey = global.RIGHT}

	if keyboard_check_direct(global.LEFT) and !keyboard_check_direct(global.DOWN) and !keyboard_check_direct(global.RIGHT) and !keyboard_check_direct(global.UP)
	{keyboard_lastkey = global.LEFT}

	/////////Getting the sprites to setup correctly when more then 1 key is pressed///
	if keyboard_check_direct(global.DOWN) and keyboard_check_direct(global.UP)
	{
	if keyboard_lastkey = global.DOWN
	{sprite_index = spr_WupS x+=0 x-=0 y+=0 y-=0}
	if keyboard_lastkey = global.UP
	{sprite_index = spr_WdownS x+=0 x-=0 y+=0 y-=0}
	}

	if keyboard_check_direct(global.RIGHT) and keyboard_check_direct(global.LEFT)
	{
	if keyboard_lastkey = global.RIGHT
	{sprite_index = spr_WleftS x+=0 x-=0 y+=0 y-=0}
	if keyboard_lastkey = global.LEFT
	{sprite_index = spr_WrightS x+=0 x-=0 y+=0 y-=0} 

	}
	*/



