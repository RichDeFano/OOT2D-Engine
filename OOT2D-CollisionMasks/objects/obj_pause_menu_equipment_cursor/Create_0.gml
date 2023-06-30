home_x = scr_viewport_wrapper(struct_view.XView, 0);
home_y = scr_viewport_wrapper(struct_view.YView, 0);

left_margin_item = obj_pause_menu.x_menu_deku_stick;
right_margin_item = obj_pause_menu.x_menu_dins_fire;
up_margin_item = obj_pause_menu.y_menu_deku_stick;
down_margin_item = obj_pause_menu.y_menu_bottle_1;


left_margin_equipment = obj_pause_menu.x_menu_kokiri_sword;
right_margin_equipment = obj_pause_menu.x_menu_hover_boots;
up_margin_equipment = obj_pause_menu.y_menu_kokiri_sword;
down_margin_equipment = obj_pause_menu.y_menu_hover_boots;

have_moved_left = false;
have_moved_right = false;
have_moved_up = false;
have_moved_down = false;
should_draw = true;

depth = obj_pause_menu.depth-10;
instance_create_depth(x, y, depth, obj_pause_menu_equipped_gfx);

