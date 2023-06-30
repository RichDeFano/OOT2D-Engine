// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_collisions(){
/////Collision Code
var current_xspeed_carry = 0;
var current_yspeed_carry = 0;
var yplus = 0;
var yplus2 = 0;
var xplus = 0;
var xplus2 = 0;
var slowValue = 1;

var current_xspeed_final = (current_xspeed + current_xspeed_carry)/(slowValue);
var current_yspeed_final = (current_yspeed + current_yspeed_carry)/(slowValue);
#region Horizontal Slopes
	
		if (place_meeting(x+current_xspeed_final,y,obj_wall_parent))
		{
		#region Horizontal - Going Up
			if (place_meeting(x+current_xspeed_final,y-yplus,obj_wall_corner_4))
			|| (place_meeting(x+current_xspeed_final,y-yplus,obj_wall_corner_1))
			{
				//Walking up a platform as long as the slope increase is smooth enough
				while (place_meeting(x+current_xspeed_final,y-yplus,obj_wall_parent) && (yplus <= 10))
					{
						yplus+=1;
					}
				
				if (place_meeting(x+current_xspeed_final,y-yplus,obj_wall_parent))
				{
					if (!place_meeting(x+sign(current_xspeed_final),y,obj_wall_parent))
				    {
				    x += sign(current_xspeed_final);
				    }
					current_xspeed_final = 0;
					current_xspeed = 0;
				}
				else
				{
					y -= yplus;
				}
			}
		#endregion
		#region Horizontal - Going Down
			else if (place_meeting(x+current_xspeed_final,y-yplus2,obj_wall_corner_3))
			|| (place_meeting(x+current_xspeed_final,y-yplus2,obj_wall_corner_2))
			{
				//Horizontal Collision - Going Down
				//Walking up a platform as long as the slope increase is smooth enough
				while (place_meeting(x+current_xspeed_final,y+yplus2,obj_wall_parent) && (yplus2 <= 10))
					{
						yplus2+=1;
					}
				if (place_meeting(x+current_xspeed_final,y+yplus2,obj_wall_parent))
				{
					if (!place_meeting(x+sign(current_xspeed_final),y,obj_wall_parent))
				    {
						x += sign(current_xspeed_final);
				    }
					current_xspeed_final = 0;
					current_xspeed = 0;
				}
				else
				{
					y += yplus2
				}
			}
		}
		#endregion
		x += current_xspeed_final;
#endregion
#region Vertical Slopes

		if (place_meeting(x,y+current_yspeed_final,obj_wall_parent))
		{
		#region Vertical - Going Up
			if (place_meeting(x-xplus,y+current_yspeed_final,obj_wall_corner_4))
			|| (place_meeting(x-xplus,y+current_yspeed_final,obj_wall_corner_3))
			{
				//Walking up a platform as long as the slope increase is smooth enough
				while (place_meeting(x-xplus,y+current_yspeed_final,obj_wall_parent) && (xplus <= 10))
					{
						xplus+=1;
					}
				
				if (place_meeting(x-xplus,y+current_yspeed_final,obj_wall_parent))
				{
					if (!place_meeting(x,y+sign(current_yspeed_final),obj_wall_parent))
				    {
						y += sign(current_yspeed_final);
				    }
					current_yspeed_final = 0;
					current_yspeed = 0;
				}
				else
				{
					x-= xplus;
				}
			}
		#endregion
		#region Vertical - Going Down
			else if (place_meeting(x-xplus2,y+current_yspeed_final,obj_wall_corner_1))
			|| (place_meeting(x-xplus2,y+current_yspeed_final,obj_wall_corner_2))
			{
				//Horizontal Collision - Going Down
				//Walking up a platform as long as the slope increase is smooth enough
				while (place_meeting(x+xplus2,y+current_yspeed_final,obj_wall_parent) && (xplus2 <= 10))
					{
						xplus2+=1;
					}
				if (place_meeting(x+xplus2,y+current_yspeed_final,obj_wall_parent))
				{
					if (!place_meeting(x,y+sign(current_yspeed_final),obj_wall_parent))
				    {
						y += sign(current_yspeed_final);
				    }
					current_yspeed_final = 0;
					current_yspeed = 0;
				}
				else
				{
					x += xplus2
				}
			}
		}
		#endregion
		y += current_yspeed;
#endregion


	
}