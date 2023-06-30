// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pause_quest_select_step(){
#region Draw Available Items
	if (global.unlocked_stone_of_agony == true){draw_sprite(spr_quest_items, struct_quest_items.stone_of_agony, x_menu_stone_of_agony, y_menu_stone_of_agony);}
	if (global.unlocked_gerudo_token == true){draw_sprite(spr_quest_items, struct_quest_items.gerudo_token, x_menu_gerudo_token, y_menu_gerudo_token);}
	draw_sprite(spr_quest_items, struct_quest_items.gold_skulltula, x_menu_gold_skulltula, y_menu_gold_skulltula);
	draw_text(x_menu_gold_skulltula_amt, y_menu_gold_skulltula_amt, global.total_gold_skulltulas);
	
	//Medallions
	if (global.unlocked_light_medallion == true){draw_sprite(spr_quest_items, struct_quest_items.light_medallion, x_menu_light_medallion, y_menu_light_medallion);}
	if (global.unlocked_forest_medallion == true){draw_sprite(spr_quest_items, struct_quest_items.forest_medallion, x_menu_forest_medallion, y_menu_forest_medallion);}
	if (global.unlocked_fire_medallion == true){draw_sprite(spr_quest_items, struct_quest_items.fire_medallion, x_menu_fire_medallion, y_menu_fire_medallion);}
	if (global.unlocked_water_medallion == true){draw_sprite(spr_quest_items, struct_quest_items.water_medallion, x_menu_water_medallion, y_menu_water_medallion);}
	if (global.unlocked_spirit_medallion == true){draw_sprite(spr_quest_items, struct_quest_items.spirit_medallion, x_menu_spirit_medallion, y_menu_spirit_medallion);}
	if (global.unlocked_shadow_medallion == true){draw_sprite(spr_quest_items, struct_quest_items.shadow_medallion, x_menu_shadow_medallion, y_menu_shadow_medallion);}
	
	//Gems
	if (global.unlocked_kokiris_emerald == true){draw_sprite(spr_quest_items, struct_quest_items.kokiri_emerald, x_menu_kokiri_emerald, y_menu_kokiri_emerald);}
	if (global.unlocked_gorons_ruby == true){draw_sprite(spr_quest_items, struct_quest_items.goron_ruby, x_menu_goron_ruby, y_menu_goron_ruby);}
	if (global.unlocked_zoras_sapphire == true){draw_sprite(spr_quest_items, struct_quest_items.zora_sapphire, x_menu_zora_sapphire, y_menu_zora_sapphire);}
	
	//Songs
	if (global.unlocked_song_zeldas_lullaby){draw_sprite(spr_quest_items, struct_quest_items.note_white, x_menu_song_1, y_menu_song_row_1);}
	if (global.unlocked_song_eponas_song){draw_sprite(spr_quest_items, struct_quest_items.note_white, x_menu_song_2, y_menu_song_row_1);}
	if (global.unlocked_song_sarias_song){draw_sprite(spr_quest_items, struct_quest_items.note_white, x_menu_song_3, y_menu_song_row_1);}
	if (global.unlocked_song_suns_song){draw_sprite(spr_quest_items, struct_quest_items.note_white, x_menu_song_4, y_menu_song_row_1);}
	if (global.unlocked_song_song_of_time){draw_sprite(spr_quest_items, struct_quest_items.note_white, x_menu_song_5, y_menu_song_row_1);}
	if (global.unlocked_song_song_of_storms){draw_sprite(spr_quest_items, struct_quest_items.note_white, x_menu_song_6, y_menu_song_row_1);}

	if (global.unlocked_song_minuet_of_forest){draw_sprite(spr_quest_items, struct_quest_items.note_green, x_menu_song_1, y_menu_song_row_2);}
	if (global.unlocked_song_bolero_of_fire){draw_sprite(spr_quest_items, struct_quest_items.note_red, x_menu_song_2, y_menu_song_row_2);}
	if (global.unlocked_song_serenade_of_water){draw_sprite(spr_quest_items, struct_quest_items.note_blue, x_menu_song_3, y_menu_song_row_2);}
	if (global.unlocked_song_nocturne_of_shadow){draw_sprite(spr_quest_items, struct_quest_items.note_orange, x_menu_song_4, y_menu_song_row_2);}
	if (global.unlocked_song_requiem_of_spirit){draw_sprite(spr_quest_items, struct_quest_items.note_purple, x_menu_song_5, y_menu_song_row_2);}
	if (global.unlocked_song_prelude_of_light){draw_sprite(spr_quest_items, struct_quest_items.note_yellow, x_menu_song_6, y_menu_song_row_2);}
#endregion
}