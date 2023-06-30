/// @description Insert description here
// You can write your code in this editor
if ((obj_Link.swim_in_water == true) && (obj_Link.swim_in_deep_water == false))
{visible = true;}
else
{visible = false;}

x = obj_Link.x - 1;
y = obj_Link.y + 10;
depth = obj_Link.depth + 1;