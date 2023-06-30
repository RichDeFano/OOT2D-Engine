scr_font_types();

instance_create_layer(0, 0, "HUD", hud_button_x);
instance_create_layer(0, 0, "HUD", hud_button_z);
instance_create_layer(0, 0, "HUD", hud_button_c_right);
instance_create_layer(0, 0, "HUD", hud_button_c_left);
instance_create_layer(0, 0, "HUD", hud_button_c_down);
instance_create_layer(0, 0, "HUD", hud_hearts);
if (global.unlocked_magic_meter == true){instance_create_layer(0, 0, "HUD", hud_magic_meter);}
instance_create_layer(0, 0, "HUD", hud_rupee_display);
