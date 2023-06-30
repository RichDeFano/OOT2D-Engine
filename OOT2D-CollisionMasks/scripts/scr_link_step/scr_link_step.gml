// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_step(){
	if (global.in_pause_menus == false)
	{
		//scr_key_checks();
		scr_link_palette_swap();
		scr_equipment_shield();
		scr_equipment_sword();
		scr_link_climbing();
		scr_link_lifting();
		scr_press_cbutton();
		scr_link_checks();
		scr_link_swimming();
		scr_link_jumping();
		//scr_link_move_check();
		scr_consumable_step_replenish();

		if (current_state == link_state_machine.standing) || (current_state == link_state_machine.walking) 
		{
			scr_link_movement_walking();
			if (current_state == link_state_machine.walking) 
			{
					scr_link_rolling();
			}
			else if (current_state == link_state_machine.standing)
			{
				current_xspeed = 0;
				current_yspeed = 0;
			}
		}
		scr_link_collisions();
		//x += current_xspeed;
		//y += current_yspeed;
	}
}