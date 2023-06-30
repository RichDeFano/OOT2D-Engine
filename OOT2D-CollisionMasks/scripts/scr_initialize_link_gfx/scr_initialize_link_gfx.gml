// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_initialize_link_gfx(){
///////////////////////////////GREEN TUNIC//////////////////////////////////
#region Walking and Standing
	//Starting sprites
	    spr_left = spr_link_walk_left;
	    spr_right = spr_link_walk_right;
	    spr_up = spr_link_walk_up;
	    spr_down = spr_link_walk_down;
	    spr_leftS = spr_link_stand_left;
	    spr_rightS = spr_link_stand_right;
	    spr_upS = spr_link_stand_up;
	    spr_downS = spr_link_stand_down;
#endregion
#region Boomerang
	//Boomerang
	    spr_BleftS = spr_link_boomerang_throw_left
	    spr_BrightS = spr_link_boomerang_throw_right;
	    spr_BupS = spr_link_boomerang_throw_up;
	    spr_BdownS = spr_link_boomerang_throw_down;
#endregion
#region Bow And Arrow
	//Bow/Arrow
	    spr_BowD = spr_link_bow_hold_down;
	    spr_BowU = spr_link_bow_hold_up;
	    spr_BowR = spr_link_bow_hold_right;
	    spr_BowL = spr_link_bow_hold_left;
	    /////Walking
	    spr_BowUW = spr_link_bow_walk_up;
	    spr_BowRW = spr_link_bow_walk_right;
	    spr_BowLW = spr_link_bow_walk_left;
	    spr_BowDW = spr_link_bow_walk_down;
	    //////////////Shoot
	    spr_BowSU = spr_link_bow_shoot_up;
	    spr_BowSR = spr_link_bow_shoot_right;
	    spr_BowSL = spr_link_bow_shoot_left;
	    spr_BowSD = spr_link_bow_shoot_down;
#endregion	
#region Rolling
	    spr_RightRoll = spr_link_roll_right;
	    spr_LeftRoll = spr_link_roll_left;
	    spr_UpRoll = spr_link_roll_up;
	    spr_DownRoll = spr_link_roll_down;
	    spr_RRollHit = spr_link_roll_hit_down;
	    spr_LRollHit = spr_link_roll_hit_left;
	    spr_URollHit = spr_link_roll_hit_up;
	    spr_DRollHit = spr_link_roll_hit_down;
#endregion
#region Climbing
	spr_leftC = spr_link_climb_left;
	spr_rightC = spr_link_climb_right;
	spr_upC = spr_link_climb_up;
	spr_downC = spr_link_climb_down;
#endregion
#region Swords
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

#endregion
#region Shields
	//Kokiri Shield
	    spr_shield1L = spr_link_kokiri_shield_left;
	    spr_shield1R = spr_link_kokiri_shield_right;
	    spr_shield1U = spr_link_kokiri_shield_up;
	    spr_shield1D = spr_link_kokiri_shield_down;
		
	//Hylian Shield
	    spr_shield2L = spr_link_hylian_shield_left;
	    spr_shield2R = spr_link_hylian_shield_right;
	    spr_shield2U = spr_link_hylian_shield_up;
	    spr_shield2D = spr_link_hylian_shield_down;
		
	//Mirror Shield
		spr_shield3L = spr_link_mirror_shield_left;
	    spr_shield3R = spr_link_mirror_shield_right;
	    spr_shield3U = spr_link_mirror_shield_up;
	    spr_shield3D = spr_link_mirror_shield_down;
		
#endregion
#region Bottles
	    spr_drinkred = spr_link_bottle_drink_red;
	    spr_drinkblue = spr_link_bottle_drink_blue;
	    spr_drinkgreen = spr_link_bottle_drink_green;
	    spr_drinkwhite = spr_link_bottle_drink_white;
	    spr_drinkpurple = spr_link_bottle_drink_purple;
		spr_drinkfairy = spr_link_bottle_open;
	    spr_drinkscoopL = spr_link_bottle_scoop_left;
	    spr_drinkscoopR = spr_link_bottle_scoop_right;
	    spr_drinkscoopU = spr_link_bottle_scoop_up;
	    spr_drinkscoopD = spr_link_bottle_scoop_down;
#endregion
#region Megaton Hammer
	spr_hammer_left = spr_link_hammer_left;
	spr_hammer_right = spr_link_hammer_right;
	spr_hammer_up = spr_link_hammer_up;
	spr_hammer_down = spr_link_hammer_down;
#endregion
#region Lifting And Throwing
	//Lifting
	    spr_LDownS = spr_link_lift_down_stand;
	    spr_LUpS = spr_link_lift_up_stand;
	    spr_LLeftS = spr_link_lift_left_stand;
	    spr_LRightS = spr_link_lift_right_stand
	    spr_LDown = spr_link_lift_down;
	    spr_LUp = spr_link_lift_up;
	    spr_LLeft = spr_link_lift_left;
	    spr_LRight = spr_link_lift_right;
	    spr_LRightW = spr_link_lift_right_walk;
	    spr_LLeftW = spr_link_lift_left_walk;
	    spr_LUpW = spr_link_lift_up_walk;
	    spr_LDownW = spr_link_lift_down_walk;
	//Throwing
	    spr_ThrowLeft = spr_link_throw_left;
	    spr_ThrowRight = spr_link_throw_right;
	    spr_ThrowUp = spr_link_throw_up;
	    spr_ThrowDown = spr_link_throw_down;
#endregion
#region Ledge Jumping
	/////LedgeJumping
	    spr_LedgeJumpU = spr_link_jump_up;
	    spr_LedgeJumpD = spr_link_jump_down;
	    spr_LedgeJumpR = spr_link_jump_right;
	    spr_LedgeJumpL = spr_link_jump_left;
#endregion
#region Swimming
	    spr_Wleft = spr_link_surface_swim_left;
	    spr_Wright = spr_link_surface_swim_right;
	    spr_Wup = spr_link_surface_swim_up;
	    spr_Wdown = spr_link_surface_swim_down;
	    spr_WleftS = spr_link_surface_swim_left_stand;
	    spr_WrightS = spr_link_surface_swim_right_stand;
	    spr_WupS = spr_link_surface_swim_up_stand;
	    spr_WdownS = spr_link_surface_swim_down_stand;
#endregion
////////////UNCONVERTED
	    spr_hurtU = HurtU
	    spr_hurtD = HurtD
	    spr_hurtL = HurtL
	    spr_hurtR = HurtR
		/*
	//Swimming sprites
	    spr_Wleft = WLeft
	    spr_Wright = WRight
	    spr_Wup = WUp
	    spr_Wdown = WDown
	    spr_WleftS = WLeftS
	    spr_WrightS = WRightS
	    spr_WupS = WUpS
	    spr_WdownS = WDownS
	    spr_WhurtU = HurtU
	    spr_WhurtD = HurtD
	    spr_WhurtL = HurtL
	    spr_WhurtR = HurtR  
	    spr_W1left = W1LeftS
	    spr_W1right = W1RightS
	    spr_W1up = W1UpS
	    spr_W1down = W1DownS
	    spr_W1leftS = W1LeftS
	    spr_W1rightS = W1RightS
	    spr_W1upS = W1UpS
	    spr_W1downS = W1DownS   
*/
	//Misc.
	    spr_ItemGet = ItemGet
	    spr_PutAway = PutAway
	    spr_SmallItemGet = SmallItemGet
	    spr_HolefallU = Fall
	    spr_HolefallD = Fall3
	    spr_HolefallR = spr_Fall2
	    spr_HolefallL = Fall
	    spr_Waterfall = WaterF

	    spr_harpplay = HarpPlay
	//Hurting sprites
	    spr_HurtR = HurtR
	    spr_HurtD = HurtD
	    spr_HurtU = HurtU
	    spr_HurtL = HurtL    
	//Pushing
	    spr_PushR = PushRight
	    spr_PushU = PushUp
	    spr_PushD = PushDown
	    spr_PushL = PushLeft
	//*Pulling
	    spr_PullU = PullUp
	    spr_PullD = PullDown
	    spr_PullR = PullRight
	    spr_PullL = spr_PullLeft

	//AirRod
	    spr_AirD = AirDown
	    spr_AirU = AirUp
	    spr_AirR = AirRight
	    spr_AirL = AirLeft
	///Hookshot
	    spr_HookL = HookL
	    spr_HookR = HookR
	    spr_HookU = HookU
	    spr_HookD = HookD
	/////Red Candle
	    spr_CandleRU = CandleRU
	    spr_CandleRD = CandleRD
	    spr_CandleRR = CandleRR
	    spr_CandleRL = CandleRL
	/////Blue Candle
	    spr_CandleBU = CandleRU
	    spr_CandleBD = CandleRD
	    spr_CandleBR = CandleRR
	    spr_CandleBL = CandleRL
	/////Extras
	    spr_dying = LDeath
    
	    spr_harpplay2 = LinkTeleport
    
	   spr_godthrow = ThrowMagic
	    ///Crystal
	    spr_CrystalL = ThrowLLeft
	    spr_CrystalR = ThrowLRight
	    spr_CrystalU = ThrowLUp
	    spr_CrystalD = ThrowLDown
	/////////////// DO NOT DELETE

}