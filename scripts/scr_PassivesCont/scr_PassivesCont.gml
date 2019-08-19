


if (instance_exists(obj_Players)) {
	
	if(obj_Players.state == 1){
		
		
		if(passiveCooldown <= 0){
			healthPoints = healthPoints - 1;
			passiveCooldown = room_speed * 0.3;
		}
		
	}
	else if((obj_Players.state == 2) && (obj_Players.healthPoints < 100)){
		
		if(passiveCooldown <= 0 ){
			healthPoints = healthPoints + 1;
			passiveCooldown = room_speed * 0.3;
		}
		
	}
	
}