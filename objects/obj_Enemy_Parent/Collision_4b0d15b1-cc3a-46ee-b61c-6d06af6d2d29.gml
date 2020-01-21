if(!invincible){
	invincible = true;
	white_flash = true;
	alarm[0] = invinciblity_timer;
	alarm[10] = 10;
	hitpoints -= obj_Player.torrentDamage;
	
	
	
	
	if((obj_Player.x - x) > 0){
		velocity_x -= 10;
		velocity_y -= 5;
	}
	else if((obj_Player.x - x) < 0){
		velocity_x -= -10;
		velocity_y -= 5;
	}

	
	
	
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