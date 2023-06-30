var x_val = scr_viewport_wrapper(struct_view.XView, 0) + 20;
var y_val = scr_viewport_wrapper(struct_view.YView, 0) + 225;
if ((global.unlocked_adult_wallet == false) && (global.unlocked_giants_wallet == false))
{
draw_sprite(spr_rupee_display, 0, x_val, y_val);
}

if ((global.unlocked_adult_wallet == true) && (global.unlocked_giants_wallet == false))
{
draw_sprite(spr_rupee_display,1, x_val, y_val);
}

if ((global.unlocked_adult_wallet == true) && (global.unlocked_giants_wallet == true))
{
draw_sprite(spr_rupee_display,2, x_val, y_val);
}



if (draw_green == false){draw_set_font(global.basic_font);}
else{draw_set_font(global.basic_font_green);}
	
	
draw_text(x_val + 16, y_val - 4, global.rupees);
draw_set_font(global.basic_font);