x_val = scr_viewport_wrapper(struct_view.XView, 0) + 194;
y_val = scr_viewport_wrapper(struct_view.YView, 0 ) + 24;
draw_sprite(spr_x_button, 0, x_val, y_val);

if ((global.equipped_kokiri_sword == false) && (global.equipped_master_sword == false) && (global.equipped_biggoron_sword == false))
{draw_sprite(spr_x_button_options, 0, x_val, y_val);}

if (global.equipped_kokiri_sword == true)
{draw_sprite(spr_x_button_options, 1, x_val, y_val);}

if (global.equipped_master_sword == true)
{draw_sprite(spr_x_button_options, 2, x_val, y_val);}

if (global.equipped_biggoron_sword == true)
{draw_sprite(spr_x_button_options, 3, x_val, y_val);}






