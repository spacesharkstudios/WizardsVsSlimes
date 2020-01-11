var earthSpikeID = instance_place(x, y, obj_EarthSpike);
if(!invincible){
	
	
	
	if(earthSpikeID.initialMoving){
		invincible = true;
		white_flash = true;
		alarm[0] = invinciblity_timer;
		alarm[10] = 10;
		alarm[11] = scr_Knockback(2 * obj_Player.facing, -2, id);
		hitpoints -= obj_EarthSpike.damage;
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