// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_key_checks(up_stand_sprite,down_stand_sprite,left_stand_sprite,right_stand_sprite){
	
	/*var up_stand_sprite = argument0;
	var down_stand_sprite = argument1;
	var left_stand_sprite = argument2;
	var right_stand_sprite = argument3;
	*/
	//var move_speed = argument4;

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
				{sprite_index = up_stand_sprite;}
			if keyboard_lastkey = global.assigned_key_up
				{sprite_index = down_stand_sprite;}
			//x+=0 x-=0 y+=0 y-=0 
		}

		if keyboard_check_direct(global.assigned_key_right) and keyboard_check_direct(global.assigned_key_left)
		{
			if keyboard_lastkey = global.assigned_key_right
				{sprite_index = left_stand_sprite; }
			if keyboard_lastkey = global.assigned_key_left
				{sprite_index = right_stand_sprite;}
		}
	
/////////////////////////////////////////Move Engine/////////////////////////////////////////
	//_move_x = keyboard_check(global.assigned_key_right) - keyboard_check(global.assigned_key_left);
	//_move_y = keyboard_check(global.assigned_key_down) - keyboard_check(global.assigned_key_up);
	

	//move_and_collide(_move_x * move_speed, _move_y * move_speed, obj_wall_parent, move_speed, 0, 0, move_speed, move_speed);
}