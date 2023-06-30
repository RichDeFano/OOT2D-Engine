/*

if keyboard_check_direct(global.assigned_key_right) and slant_left = false and slant_up = false and slant_down = false
{
if place_meeting(x+3,y,obj_wall_corner_4){slant_right = true; current_yspeed = -2;}
if place_meeting(x+3,y,obj_wall_corner_3){slant_right = true; current_yspeed = 2;}
else
{
slant_right = false
}
}


if keyboard_check_direct(global.assigned_key_left) and slant_right = false and slant_up = false and slant_down = false
{
if place_meeting(x-3,y,obj_wall_corner_1) {slant_left = true; current_yspeed = -2;}
if place_meeting(x-3,y,obj_wall_corner_2) {slant_left = true; current_yspeed = 2;}
else
{
slant_left = false
}
}


if keyboard_check_direct(global.assigned_key_down) and slant_left = false and slant_up = false and slant_right = false
{
if place_meeting(x,y+3,obj_wall_corner_4) {slant_down = true; current_xspeed = -2;}
if place_meeting(x,y+3,obj_wall_corner_1) {slant_down = true; current_xspeed = 2;}
else
{
slant_down = false;
}
}


if keyboard_check_direct(global.assigned_key_up) and slant_left = false and slant_right = false and slant_down = false
{
if place_meeting(x,y-3,obj_wall_corner_2) {slant_up = true; current_xspeed = 2;}
if place_meeting(x,y-3,obj_wall_corner_3) {slant_up = true; current_xspeed = -2;}
else
{
slant_up = false
}
}

if ((slant_up == false) && (slant_down == false) && (slant_right == false) && (slant_left == false))
{
	current_xspeed = 0;
	current_yspeed = 0;
}
if (!place_meeting(x+current_xspeed,y,obj_wall_parent)){x += current_xspeed;}
if (!place_meeting(x, y+current_yspeed, obj_wall_parent)){y += current_yspeed;}


*/