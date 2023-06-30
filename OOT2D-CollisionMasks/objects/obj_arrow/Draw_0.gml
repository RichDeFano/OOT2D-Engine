/// @description Insert description here
// You can write your code in this editor
draw_self();

var is_right = false;
var is_left = false;
var is_up = false;
var is_down = false;
//right = 1
//left = 0
//up = 2
//down == 3
if (sprite_index == spr_Arrow)
{
	if (image_index == 0)
	{
		is_left = true;
		is_right = false;
		is_up = false;
		is_down = false;
	}
	else if (image_index == 1)
	{
		is_left = false;
		is_right = true;
		is_up = false;
		is_down = false;
	}
	else if (image_index == 2)
	{
		is_left = false;
		is_right = false;
		is_up = true;
		is_down = false;
	}
	else if (image_index == 3)
	{
		is_left = false;
		is_right = false;
		is_up = false;
		is_down = true;
	}
}

if (fire_arrow == true)
{
	if (is_right == true){draw_sprite(spr_FireArrowR,0,x,y)}
	if (is_left == true){draw_sprite(spr_FireArrowL,0,x,y)}
	if (is_up == true){draw_sprite(spr_FireArrowU,0,x,y)}
	if (is_down == true){draw_sprite(spr_FireArrowD,0,x,y)}
}

if (ice_arrow == true)
{
	if (is_right == true){draw_sprite(spr_IceArrowR,0,x,y)}
	if (is_left == true){draw_sprite(spr_IceArrowL,0,x,y)}
	if (is_up == true){draw_sprite(spr_IceArrowU,0,x,y)}
	if (is_down == true){draw_sprite(spr_IceArrowD,0,x,y)}
}

if (light_arrow == true)
{
	if (is_right == true){draw_sprite(spr_LightArrowR,0,x,y)}
	if (is_left == true){draw_sprite(spr_LightArrowL,0,x,y)}
	if (is_up == true){draw_sprite(spr_LightArrowU,0,x,y)}
	if (is_down == true){draw_sprite(spr_LightArrowD,0,x,y)}
}