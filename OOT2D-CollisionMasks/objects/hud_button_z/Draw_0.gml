var x_val = scr_viewport_wrapper(struct_view.XView, 0) + 222;
var y_val = scr_viewport_wrapper(struct_view.YView, 0) + 24;
draw_sprite(spr_z_button, 0, x_val, y_val)

if (current_state == struct_z_button_states.Dive)	{draw_sprite(spr_z_button_text, struct_z_button_states.Dive, x_val, y_val);}
if (current_state == struct_z_button_states.Down)	{draw_sprite(spr_z_button_text, struct_z_button_states.Down, x_val, y_val);}
if (current_state == struct_z_button_states.Stop)	{draw_sprite(spr_z_button_text, struct_z_button_states.Stop, x_val, y_val);}
if (current_state == struct_z_button_states.Next)	{draw_sprite(spr_z_button_text, struct_z_button_states.Next, x_val, y_val);}
if (current_state == struct_z_button_states.Faster)	{draw_sprite(spr_z_button_text, struct_z_button_states.Faster, x_val, y_val);}
if (current_state == struct_z_button_states.Decide)	{draw_sprite(spr_z_button_text, struct_z_button_states.Decide, x_val, y_val);}
if (current_state == struct_z_button_states.Check)	{draw_sprite(spr_z_button_text, struct_z_button_states.Check, x_val, y_val);}
if (current_state == struct_z_button_states.Return)	{draw_sprite(spr_z_button_text, struct_z_button_states.Return, x_val, y_val);}
if (current_state == struct_z_button_states.Drop)	{draw_sprite(spr_z_button_text, struct_z_button_states.Drop, x_val, y_val);}
if (obj_Link.can_lift == true){draw_sprite(spr_z_button_text, struct_z_button_states.Grab, x_val, y_val);}
if (current_state == struct_z_button_states.Climb)	{draw_sprite(spr_z_button_text, struct_z_button_states.Climb, x_val, y_val);}
if (current_state == struct_z_button_states.Save)	{draw_sprite(spr_z_button_text, struct_z_button_states.Save, x_val, y_val);}
if (current_state == struct_z_button_states.Reel)	{draw_sprite(spr_z_button_text, struct_z_button_states.Reel, x_val, y_val);}
if (current_state == struct_z_button_states.PutAway){draw_sprite(spr_z_button_text, struct_z_button_states.PutAway, x_val, y_val);}
if (current_state == struct_z_button_states.Speak)	{draw_sprite(spr_z_button_text, struct_z_button_states.Speak, x_val, y_val);}
if (current_state == struct_z_button_states.Enter)	{draw_sprite(spr_z_button_text, struct_z_button_states.Enter, x_val, y_val);}
if ((obj_Link.current_state == link_state_machine.holding_walk) || (obj_Link.current_state == link_state_machine.holding_stand))	{draw_sprite(spr_z_button_text, struct_z_button_states.Throw, x_val, y_val);}
if (current_state == struct_z_button_states.Jump)	{draw_sprite(spr_z_button_text, struct_z_button_states.Jump, x_val, y_val);}
if (current_state == struct_z_button_states.Open)	{draw_sprite(spr_z_button_text, struct_z_button_states.Open, x_val, y_val);}
if (current_state == struct_z_button_states.Attack)	{draw_sprite(spr_z_button_text, struct_z_button_states.Attack, x_val, y_val);}
