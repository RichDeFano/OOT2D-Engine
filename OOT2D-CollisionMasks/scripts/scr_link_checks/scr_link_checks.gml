// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_checks(){
#region Lifting
	 if ( collision_point(x,y-8,obj_lift_mask,true,false)////
	|| collision_point(x-8,y,obj_lift_mask,true,false) 
	|| collision_point(x,y+12,obj_lift_mask,true,false)
	|| collision_point(x+8,y,obj_lift_mask,true,false) 
	|| collision_point(x,y,obj_lift_mask,true,false) )
	{
		if ((throwing == false) && (setting == false) && (holding == false))
		{
			if ((current_state != link_state_machine.holding_stand)
			&& (current_state != link_state_machine.holding_walk)
			&& (current_state != link_state_machine.throwing)
			&& (stop_lift == false))
			{
				var closest_lift_parent = instance_nearest(x,y,obj_lift_mask);
				if (closest_lift_parent.selected == false)
				{
					can_lift = true;
				}
			
			}
			
		}
	}

	else{can_lift = false;}
#endregion
#region Swimming

	if (collision_point(x,y,obj_water_mask,true,false))
	{
		swim_in_water = true;
		swim_in_deep_water = true;
	}
	else
	{
		if (current_state == link_state_machine.swimming_walk){current_state = link_state_machine.standing;}
		if (current_state == link_state_machine.swimming_stand){current_state = link_state_machine.standing;}
		swim_in_water = false;
		swim_in_deep_water = false;
		
	}
#endregion
#region Climbing
if (collision_point(x,y+4,obj_climb_mask,true,false)){can_climb = true;} 
else
{
	can_climb = false;
	if (current_state == link_state_machine.climbing)
	{
		current_state = link_state_machine.standing;
	}
}

#endregion

	if ((current_state != link_state_machine.rolling) 
	&& (current_state != link_state_machine.rolling_hit)
	&& (current_state != link_state_machine.climbing)
	&& (current_state != link_state_machine.sword_spin)
	&& (current_state != link_state_machine.lifting)
	&& (current_state != link_state_machine.holding_walk)
	&& (current_state != link_state_machine.holding_stand)
	&& (current_state != link_state_machine.throwing)
	&& (current_state != link_state_machine.swimming_stand)
	&& (current_state != link_state_machine.swimming_walk))
	{moveallowed = true;}
	else {moveallowed = false;}
	
}