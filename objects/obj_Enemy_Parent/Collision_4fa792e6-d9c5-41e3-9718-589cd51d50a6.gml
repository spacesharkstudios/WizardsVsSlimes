if(!invincible){
	invincible = true;
	white_flash = true;
	burning = true;
	alarm[0] = invinciblity_timer;
	alarm[9] = room_speed * 7;
	alarm[10] = 10;
	alarm[11] = scr_Knockback(2 * obj_Player.facing, -2, id);
	hitpoints -= obj_Player.fireballDamage + (obj_Player.fireballDamage * 0.75 * obj_Player.firePassive);
	obj_Player.firePassive = 0;
	
}
if(hitpoints <= 0){
	
	// water passive
	if(obj_Player.state == Wizards.water){
		if(obj_Player.hitpoints + waterHealthGain < obj_Player.max_hitpoints){
			obj_Player.hitpoints += waterHealthGain;
		} else {
			var a = obj_Player.max_hitpoints - obj_Player.hitpoints;
			obj_Player.hitpoints += clamp(a, 0, obj_Player.max_hitpoints);
		}
	}
	
	obj_Player.mana += manaValue;
	if(obj_Player.mana > 100){
		obj_Player.mana = 100;
	}
	
	instance_destroy();
}