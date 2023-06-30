/// @description Insert description here
// You can write your code in this editor
fire_arrow = false;
ice_arrow = false;
light_arrow = false;
if (obj_Link.holding_bow_right == true)
{
	alarm[1] = 1;
	image_index = 1;
}

else if (obj_Link.holding_bow_left == true)
{
	alarm[2] = 1;
	image_index = 0;
}

else if (obj_Link.holding_bow_up == true)
{
	alarm[3] = 1;
	image_index = 2;
}

else if (obj_Link.holding_bow_down == true)
{
	alarm[4] = 1;
	image_index = 3;
}

image_speed = 0;
alarm[6] = 25;
