// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_to_string(current_state){

	if (current_state == link_state_machine.walking){return "Walking";}
	else if (current_state == link_state_machine.standing){return "Standing";}
	else if (current_state == link_state_machine.rolling){return "Rolling";}
	else if (current_state == link_state_machine.rolling_hit){return "Rolling(Collision)";}
	else if (current_state == link_state_machine.dying){return "Dying";}
	else if (current_state == link_state_machine.bow_and_arrow){return "Bow";}
	else if (current_state == link_state_machine.bow_and_arrow_stand){return "Bow(Stand)";}
	else if (current_state == link_state_machine.bow_and_arrow_shoot_1){return "Bow(Shoot)";}
	else if (current_state == link_state_machine.bow_and_arrow_shoot_2){return "Bow(EarlyShot)";}
	else if (current_state == link_state_machine.bow_and_arrow_walk){return "Bow(Walk)";}
	else if (current_state == link_state_machine.bow_and_arrow_charge){return "Bow(Charge)";}
	else if (current_state == link_state_machine.boomerang){return "Boomerang";}
	else if (current_state == link_state_machine.climbing){return "Climbing"}
	else if (current_state == link_state_machine.sword){return "Sword(Slash)"}
	else if (current_state == link_state_machine.sword_spin_hold){return "Sword(Hold)"}
	else if (current_state == link_state_machine.sword_spin){return "Sword(Spin)"}
	else if (current_state == link_state_machine.shield){return "Shield"}
	else if (current_state == link_state_machine.hammer){return "Hammer"}
	else if (current_state == link_state_machine.lifting){return "Lifting";}
	else if (current_state == link_state_machine.holding_walk){return "Holding(Walk)";}
	else if (current_state == link_state_machine.holding_stand){return "Holding(Stand)";}
	else if (current_state == link_state_machine.throwing){return "Throwing";}
	else if (current_state == link_state_machine.setting){return "Setting";}
	else if (current_state == link_state_machine.swimming_stand){return "Swimming(Stand)";}
	else if (current_state == link_state_machine.swimming_walk){return "Swimming(Walk)";}
	else if (current_state == link_state_machine.jumping){return "Jumping";}
	else if (current_state == link_state_machine.null){return "NULL";}
}