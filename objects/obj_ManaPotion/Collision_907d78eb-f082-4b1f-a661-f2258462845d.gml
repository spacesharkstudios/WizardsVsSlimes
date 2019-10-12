/// @description Insert description here
// You can write your code in this editor

if (obj_Player.max_mana != obj_Player.mana) {
	if (obj_Player.max_mana - obj_Player.mana > mana_heal) {
		obj_Player.mana += mana_heal;
	} else {
		obj_Player.mana = obj_Player.max_mana;
	}	
	instance_destroy();
}



