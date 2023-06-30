// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spend_magic(desired_amount){
	var did_spend = false;
	if (global.current_magic - desired_amount >= 0)
	{
		global.current_magic = global.current_magic - desired_amount;
		var did_spend = true;
	}
	return did_spend;
}