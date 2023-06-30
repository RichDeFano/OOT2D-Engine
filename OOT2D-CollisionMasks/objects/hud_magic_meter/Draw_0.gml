
var y_offset = 28;
if (global.max_hp > (4*10)){y_offset = 10 + 28;}


var x_val = scr_viewport_wrapper(struct_view.XView, 0) + 8;
var y_val = scr_viewport_wrapper(struct_view.YView, 0) + y_offset;

if ((global.unlocked_magic_meter == true) && (global.unlocked_magic_meter_2 == false))
{
	draw_sprite(spr_magic_meter,global.current_magic,x_val,y_val);
}
else if (global.unlocked_magic_meter_2 == true)
{
	draw_sprite(spr_magic_meter_2,global.current_magic,x_val, y_val);
}
