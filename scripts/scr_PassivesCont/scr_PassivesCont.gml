// Passives are called every frame


if (instance_exists(obj_Player)) {
	
	if(obj_Player.state == Wizards.fire){
		
		
		if(passiveCooldown >= 20){
			healthPoints = healthPoints - 1;
			passiveCooldown = 0;
		}
		
	}
	else if((obj_Player.state == Wizards.water) && (obj_Player.healthPoints < max_hitpoints)){
		
		if(passiveCooldown >= 20 ){
			healthPoints = healthPoints + 1;
			passiveCooldown = 0;
		}
		
	}
	
}