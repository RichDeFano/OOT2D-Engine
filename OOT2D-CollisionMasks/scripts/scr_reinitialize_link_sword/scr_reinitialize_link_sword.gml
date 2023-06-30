// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reinitialize_link_sword(){
	if (global.equipped_kokiri_sword == true)
	{
		spr_down_swing = spr_link_kokiri_sword_down_slash;
		spr_down_spin = spr_link_kokiri_sword_down_spin;
		spr_down_spin_stand = spr_link_kokiri_sword_down_spin_stand;
		spr_down_spin_walk = spr_link_kokiri_sword_down_spin_walk;
		
		spr_right_swing = spr_link_kokiri_sword_right_slash;
		spr_right_spin = spr_link_kokiri_sword_right_spin;
		spr_right_spin_stand = spr_link_kokiri_sword_right_spin_stand;
		spr_right_spin_walk = spr_link_kokiri_sword_right_spin_walk;
		
		spr_left_swing = spr_link_kokiri_sword_left_slash;
		spr_left_spin = spr_link_kokiri_sword_left_spin;
		spr_left_spin_stand = spr_link_kokiri_sword_left_spin_stand;
		spr_left_spin_walk = spr_link_kokiri_sword_left_spin_walk;
		
		spr_up_swing = spr_link_kokiri_sword_up_slash;
		spr_up_spin = spr_link_kokiri_sword_up_spin;
		spr_up_spin_stand = spr_link_kokiri_sword_up_spin_stand;
		spr_up_spin_walk = spr_link_kokiri_sword_up_spin_walk;
		 
	}
	else if (global.equipped_master_sword == true)
	{
		spr_down_swing = spr_link_master_sword_down_slash;
		spr_down_spin = spr_link_master_sword_down_spin;
		spr_down_spin_stand = spr_link_master_sword_down_spin_stand;
		spr_down_spin_walk = spr_link_master_sword_down_spin_walk;
		
		spr_right_swing = spr_link_master_sword_right_slash;
		spr_right_spin = spr_link_master_sword_right_spin;
		spr_right_spin_stand = spr_link_master_sword_right_spin_stand;
		spr_right_spin_walk = spr_link_master_sword_right_spin_walk;
		
		spr_left_swing = spr_link_master_sword_left_slash;
		spr_left_spin = spr_link_master_sword_left_spin;
		spr_left_spin_stand = spr_link_master_sword_left_spin_stand;
		spr_left_spin_walk = spr_link_master_sword_left_spin_walk;
		
		spr_up_swing = spr_link_master_sword_up_slash;
		spr_up_spin = spr_link_master_sword_up_spin;
		spr_up_spin_stand = spr_link_master_sword_up_spin_stand;
		spr_up_spin_walk = spr_link_master_sword_up_spin_walk;
	}	
	else if (global.equipped_biggoron_sword == true)
	{
		spr_down_swing = spr_link_biggoron_sword_down_slash;
		spr_down_spin = spr_link_biggoron_sword_down_spin;
		spr_down_spin_stand = spr_link_biggoron_sword_down_spin_stand;
		spr_down_spin_walk = spr_link_biggoron_sword_down_spin_walk;
		
		spr_right_swing = spr_link_biggoron_sword_right_slash;
		spr_right_spin = spr_link_biggoron_sword_right_spin;
		spr_right_spin_stand = spr_link_biggoron_sword_right_spin_stand;
		spr_right_spin_walk = spr_link_biggoron_sword_right_spin_walk;
		
		spr_left_swing = spr_link_biggoron_sword_left_slash;
		spr_left_spin = spr_link_biggoron_sword_left_spin;
		spr_left_spin_stand = spr_link_biggoron_sword_left_spin_stand;
		spr_left_spin_walk = spr_link_biggoron_sword_left_spin_walk;
		
		spr_up_swing = spr_link_biggoron_sword_up_slash;
		spr_up_spin = spr_link_biggoron_sword_up_spin;
		spr_up_spin_stand = spr_link_biggoron_sword_up_spin_stand;
		spr_up_spin_walk = spr_link_biggoron_sword_up_spin_walk;
	}		
}