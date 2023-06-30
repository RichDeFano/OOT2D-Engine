// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_initialize_link_local_vars(){
	current_state = link_state_machine.standing;
	moveallowed = true;
	canroll = true;
	
	//Collision and Pathing
	slant_left = false;
	slant_right = false;
	slant_up = false;
	slant_down = false;
	current_xspeed = 0;
	current_yspeed = 0;
	
	//C Buttons
	current_item = -1;
	current_button = -1;
	
	//Bow And Arrow
	holding_bow_down = false;
	holding_bow_right = false;
	holding_bow_left = false;
	holding_bow_up = false;
	can_start_shot_bow = false;
	shooting_bow = false;
	can_shoot_arrows = true;
	
	//Boomerang
	can_throw_boomerang = true;
	throwing_boomerang = false;
	boomerang_up = false;
	boomerang_up_left = false;
	boomerang_up_right = false;
	boomerang_down = false;
	boomerang_down_left = false;
	boomerang_down_right = false;
	boomerang_right = false;
	boomerang_left = false;
	
	//Sword
	can_swing_sword = true;
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
	
	//Hammer
	can_swing_hammer = true;
	swinging_hammer = false;
	
	//Lifting and Throwing
	can_lift = false;
	setting = false;
	set_right = false;
	set_left = false;
	set_up = false;
	set_down = false;
	holding = false;
	pick_up = false;
	throwing = false;
	throw_up = false;
	throw_down = false;
	throw_right = false;
	throw_left = false;
	stop_lift = false;
	can_lift_throw = false;
	can_lift_set = false;
	lifted_throw = false;
	lifted_set = false;
	
	//Swimming
	swim_in_water = false;
	swim_in_deep_water = false;
	
	//Climbing
	can_climb = false;
	
	//Jumping
	jumping = false;
	can_jump_left = false;
	can_jump_right = false;
	can_jump_up = false;
	can_jump_down = false;
	jumping_up = false;
	jumping_down = false;
	jumping_right = false;
	jumping_left = false;
	jumping_tick_counter = false;
}