obj_Link.can_shoot_arrows = true;
scr_item_arrow_move("000010000", 0);

if (sprite_index == spr_Arrow)
{
	if (image_index == 1)//right
	{
		instance_create_depth(x+20, y+2, depth, obj_arrow_clink);
		sprite_index = spr_ArrowWR;
	}
	else if image_index = 0//left
	{
		instance_create_depth(x-20, y+2, depth, obj_arrow_clink);
		sprite_index = spr_ArrowWL;
	}
	else if image_index = 2//up
	{
		instance_create_depth(x+2, y-20, depth, obj_arrow_clink);
		sprite_index = spr_ArrowWU;
	}
	else if image_index = 3//down
	{
		instance_create_depth(x-2, y+20, depth, obj_arrow_clink);
		sprite_index = spr_ArrowWD;
	}
	
	x += 0;
	y += 0;
	image_speed = 0.6;
	alarm[7] = 15;
}


