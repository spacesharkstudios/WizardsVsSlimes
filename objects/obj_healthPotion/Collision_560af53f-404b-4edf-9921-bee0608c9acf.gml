/// @description Insert description here
// You can write your code in this editor

if (obj_Player.max_hitpoints != obj_Player.hitpoints) {
	if (obj_Player.max_hitpoints - obj_Player.hitpoints > heal) {
		obj_Player.hitpoints += heal;
	} else {
		obj_Player.hitpoints = obj_Player.max_hitpoints;
	}	
	instance_destroy();
}



