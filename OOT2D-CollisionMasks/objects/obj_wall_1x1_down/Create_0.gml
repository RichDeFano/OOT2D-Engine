/// @description Insert description here
// You can write your code in this editor
terrain_depth = 0;
starting_x = x;
starting_y = y;
ending_x = x+sprite_width;
ending_y = y+sprite_height;
increase_per_y = 1;
have_created = false;
spr_height = sprite_get_height(spr_wall_1x1_down);
spr_width = sprite_get_width(spr_wall_1x1_down);
loops_x = sprite_width/spr_width;
loops_y = sprite_height/spr_height;
stop_iteration = false;