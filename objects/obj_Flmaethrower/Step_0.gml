if(instance_exists(obj_Player)){

	x = obj_Player.x;
	y = obj_Player.y;

	if(obj_Player.facing == 1){
		image_xscale = 1;
		facing = 1;
	}
	else{
		image_xscale = -1;
		facing = -1;
	}

	if(obj_Player.state !=Wizards.fire){
	
		instance_destroy();
	
	}
}