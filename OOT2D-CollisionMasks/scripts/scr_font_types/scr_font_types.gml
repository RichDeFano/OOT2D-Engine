// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_font_types(){
	global.basic_font = font_add_sprite(spr_text,ord("!"), true, 1);
	global.basic_font_blue = font_add_sprite(spr_text_blue,ord("!"), true, 1);
	global.basic_font_gray = font_add_sprite(spr_text_gray,ord("!"), true, 1);
	global.basic_font_green = font_add_sprite(spr_text_green,ord("!"), true, 1);
	global.basic_font_lt_blue = font_add_sprite(spr_text_lt_blue,ord("!"), true, 1);
	global.basic_font_orange = font_add_sprite(spr_text_orange,ord("!"), true, 1);
	global.basic_font_purple = font_add_sprite(spr_text_purple,ord("!"), true, 1);
	global.basic_font_red = font_add_sprite(spr_text_red,ord("!"), true, 1);
	global.basic_font_yellow = font_add_sprite(spr_text_yellow,ord("!"), true, 1);
	
	
	
	draw_set_font(global.basic_font);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}