if (!instance_exists(obj_pause_menu)){instance_destroy();}

x_val = hud_button_x.x_val;
y_val = hud_button_x.y_val;



if (distance_to_point(x_val, y_val) <= 15)
{

	if (current_item == struct_equipment.kokiri_sword)
	{
		global.equipped_kokiri_sword = true;
		global.equipped_master_sword = false;
		global.equipped_biggoron_sword = false;
	}
	else if (current_item == struct_equipment.master_sword)
	{
		global.equipped_kokiri_sword = false;
		global.equipped_master_sword = true;
		global.equipped_biggoron_sword = false;
	}
	else if (current_item == struct_equipment.biggoron_sword)
	{
		global.equipped_kokiri_sword = false;
		global.equipped_master_sword = false;
		global.equipped_biggoron_sword = true;
	}

	instance_destroy();
}
else
{
	move_towards_point(x_val,y_val,15);
}
