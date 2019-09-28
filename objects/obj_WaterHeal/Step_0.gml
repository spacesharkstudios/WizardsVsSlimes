if(instance_exists(obj_Player)){
	
	x = obj_Player.x;
	y = obj_Player.y;
	
	if(obj_Player.hitpoints < 100){
		obj_Player.hitpoints += 0.3;
	}
}