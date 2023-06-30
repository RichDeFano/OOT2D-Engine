/// @description Insert description here
// You can write your code in this editor
terrain_depth = 0;
starting_x = x;
starting_y = y;
ending_x = x+16;
ending_y = y+16;
increase_per_y = 1;
have_created = false;
spr_height = sprite_get_height(spr_wall_1x1_right);
spr_width = sprite_get_width(spr_wall_1x1_right);
loops_x = sprite_width/spr_width;
loops_y = sprite_height/spr_height;
stop_iteration = false;