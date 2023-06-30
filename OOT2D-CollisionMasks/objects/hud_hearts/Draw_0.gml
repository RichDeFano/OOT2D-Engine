var i;
i=0;

while(i*4<global.max_hp){
  draw_sprite(spr_empty_heart,
				0,
				scr_viewport_wrapper(struct_view.XView, 0) + (i mod 10) * 10 + (i mod 10)* 1 + 15,
				scr_viewport_wrapper(struct_view.YView, 0) + (i div 10) * 10 + 20);
  i+=1;
}

i=0;
while(i*4<global.current_hp-4){
	  draw_sprite(spr_heart,
					0,
					scr_viewport_wrapper(struct_view.XView, 0) + (i mod 10) * 10 + (i mod 10)* 1 + 15,
					scr_viewport_wrapper(struct_view.YView, 0) + (i div 10) * 10 + 20)
i+=1;
}

if ((global.current_hp mod 4) != 0) {
		draw_sprite_ext(spr_heart,
						4-(global.current_hp mod 4),
						scr_viewport_wrapper(struct_view.XView, 0) + (i mod 10) * (10) + (i mod 10)* 1 + 15,
						scr_viewport_wrapper(struct_view.YView, 0) + (i div 10) * 10 + 20,
						image_scale,
						image_scale,
						image_angle,
						-1,
						image_alpha);			
}

else{
			draw_sprite_ext(spr_heart,
						0,
						scr_viewport_wrapper(struct_view.XView, 0) + (i mod 10) * 10 + (i mod 10)* 1 + 15,
						scr_viewport_wrapper(struct_view.YView, 0) + (i div 10) * 10 + 20,
						image_scale,
						image_scale,
						image_angle,
						-1,
						image_alpha);		
}
