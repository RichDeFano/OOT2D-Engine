// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_link_palette_swap(){

if (global.equipped_kokiri_boots == true)
{
	if (global.equipped_kokiri_tunic == true){current_pal = 0;}
	else if (global.equipped_goron_tunic == true){current_pal = 1;}
	else if (global.equipped_zora_tunic == true){current_pal = 2;}
}
else if (global.equipped_iron_boots == true)
{
	if (global.equipped_kokiri_tunic == true){current_pal = 3;}
	else if (global.equipped_goron_tunic == true){current_pal = 4;}
	else if (global.equipped_zora_tunic == true){current_pal = 5;}
}
else if (global.equipped_hover_boots == true)
{
	if (global.equipped_kokiri_tunic == true){current_pal = 6;}
	else if (global.equipped_goron_tunic == true){current_pal = 7;}
	else if (global.equipped_zora_tunic == true){current_pal = 8;}
}

}