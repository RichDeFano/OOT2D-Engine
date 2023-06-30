if (global.current_hp <= 0)
{
global.current_hp = 0;
obj_Link.current_state = link_state_machine.dying;
}


if (global.current_hp > global.max_hp){global.current_hp = global.max_hp;}

if ((image_scale <= 1.5) && (increasing == true))
{
	image_scale += image_scale_increase;
	if (image_scale >= 1.5)
	{
		increasing = false;
		decreasing = true;
	}
}
if ((image_scale >= 1.0) && (decreasing == true))
{
	image_scale -= image_scale_increase;
		if (image_scale <= 1.0)
	{
		increasing = true;
		decreasing = false;
	}
}
