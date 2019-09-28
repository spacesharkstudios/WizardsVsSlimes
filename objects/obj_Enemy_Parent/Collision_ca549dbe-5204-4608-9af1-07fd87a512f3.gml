if(!invincible){
	invincible = true;
	white_flash = true;
	burning = true;
	alarm[0] = invinciblity_timer;
	alarm[9] = room_speed * 7;
	alarm[10] = 10;
	alarm[11] = scr_Knockback(2 * obj_Player.facing, -2, id);
	hitpoints -= obj_Player.fireSelfExplosion;
	
}
if(hitpoints <= 0){
	
	// water passive
	if(obj_Player.state == Wizards.water){
		obj_Player.hitpoints += waterHealthGain;
	}
	
	obj_Player.mana += manaValue;
	if(obj_Player.mana > 100){
		obj_Player.mana = 100;
	}
	
	instance_destroy();
}