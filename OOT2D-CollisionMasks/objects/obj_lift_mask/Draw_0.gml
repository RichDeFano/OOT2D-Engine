/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_text(x,y, world_depth);
draw_text(x,y-25, throw_depth);


for(var i = 0; i < position_array_size; i += 1)
{
	if (tick_counter == i)
	{	
		var position_x = tick_counter*global.tile_size;
		var position_y = position_array[0];
		var height_scaling = position_array[0]/position_array[tick_counter];
		if (in_air_right == true)
		{
			draw_sprite_ext(spr_shadow,0,draw_x+position_x,(draw_y-position_y)+(2*global.tile_size),1/(throw_depth-world_depth),1/(throw_depth-world_depth),0,0,0.75);
		}
		else if (in_air_left == true)
		{
			draw_sprite_ext(spr_shadow,0,draw_x-position_x,(draw_y-position_y)+(2*global.tile_size),1/(throw_depth-world_depth),1/(throw_depth-world_depth),0,0,0.75);
		}

	}
	/*
	var position_x2 = i*global.tile_size;
	var position_y2 = position_array[i];
	draw_circle(draw_x+position_x2, draw_y-position_y2,2,true);
	*/
}



draw_text(400,400,"Throwing:" + string(obj_Link.lifted_throw))
draw_text(400,425,"Holding:" + string(obj_Link.holding))
draw_text(400,450,"Setting:" + string(obj_Link.lifted_set))


