// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_consumable_step_replenish(){
#region All Hearts
	//////////ADDING ALL HEARTS////////////
	if (slow_hearts_gain_all == true) {global.current_hp += 1}

	if global.current_hp >= global.max_hp
	{
		slow_hearts_gain_all = false
		global.current_hp = global.max_hp
	}
#endregion
#region 8 Hearts
	/////////////ADDING 8 HEARTS////////////
	if (slow_hearts_gain_8 == true)
	{
		global.current_hp += 1
		slow_hearts_8_counter += 1
	}

	if ((slow_hearts_8_counter == 32) || (global.current_hp >= global.max_hp))
	{
		slow_hearts_gain_8 = false;
		slow_hearts_8_counter = 0;
	}
#endregion
#region 5 Hearts
	///////////////////////////////ADDING 5 HEARTS
	if (slow_hearts_gain_5 == true)
	{
		global.current_hp += 1;
		slow_hearts_5_counter += 1;
	}

	if ((slow_hearts_5_counter == 20) || (global.current_hp >= global.max_hp))
	{
		slow_hearts_gain_5 = false;
		slow_hearts_5_counter = 0;
	}
#endregion
#region All Magic
	//////////////////////////////ADDING ALL MAGIC////////////////////
	if ((slow_magic_gain_all == true) && (global.max_magic > global.current_magic)) {global.current_magic += 1;}

	if (global.current_magic >= global.max_magic)
	{
		global.current_magic = global.max_magic;
		slow_magic_gain_all = false;
	}
#endregion
#region 10 Magic
	///////////////////ADDING HALF MAGIC/////////////////
	if ((slow_magic_gain_10 == true) && (global.max_magic > global.current_magic))
	{
		global.current_magic += 1;
		slow_magic_10_counter += 1;
	}


	if ((slow_magic_10_counter == 10) || (global.current_magic >= global.max_magic))
	{
		slow_magic_gain_10 = false;
		slow_magic_10_counter = 0;
	}
#endregion
#region 20 Magic
	///////////////////ADDING HALF MAGIC/////////////////
	if ((slow_magic_gain_20 == true) && (global.max_magic > global.current_magic))
	{
		global.current_magic += 1;
		slow_magic_20_counter += 1;
	}


	if ((slow_magic_20_counter == 10) || (global.current_magic >= global.max_magic))
	{
		slow_magic_gain_20 = false;
		slow_magic_20_counter = 0;
	}
#endregion
}