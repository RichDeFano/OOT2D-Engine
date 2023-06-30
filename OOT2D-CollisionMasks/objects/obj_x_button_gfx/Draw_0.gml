/// @description Insert description here
// You can write your code in this editor
switch(current_item)
{
	case (struct_equipment.kokiri_sword):
		current_item = struct_equipment.kokiri_sword;
		draw_sprite(spr_equipment_upgrades,struct_equipment.kokiri_sword,x,y);	
	break;
	
	case (struct_equipment.master_sword):
		current_item = struct_equipment.master_sword;
		draw_sprite(spr_equipment_upgrades,struct_equipment.master_sword,x,y);	
	break;
	
	case (struct_equipment.biggoron_sword):
		current_item = struct_equipment.biggoron_sword;
		draw_sprite(spr_equipment_upgrades,struct_equipment.biggoron_sword,x,y);	
	break;

	
}