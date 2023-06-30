// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_state_machine(){
	enum link_state_machine
	{
		walking,
		standing,
		rolling,
		rolling_hit,
		dying,
		bow_and_arrow,
		bow_and_arrow_charge,
		bow_and_arrow_stand,
		bow_and_arrow_walk,
		bow_and_arrow_shoot_1,
		bow_and_arrow_shoot_2,
		boomerang,
		climbing,
		sword,
		sword_spin,
		sword_spin_hold,
		shield,
		hammer,
		lifting,
		holding_walk,
		holding_stand,
		throwing,
		setting,
		swimming_stand,
		swimming_walk,
		jumping,
		null
	}
}