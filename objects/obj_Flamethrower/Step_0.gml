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
	
	
	if(!obj_Player.flamethowerActive || (obj_Player.mana < obj_Player.fireSpecialCost)){
		instance_destroy();
	}
	
	#region particles
	part_type_speed(global.Flamethrower_Particles, .5, 2, -.001, 0);
	
	if(facing == 1){
		part_type_direction(global.Flamethrower_Particles, -10, 10, 0, 3);
	} else if(facing == -1){
		part_type_direction(global.Flamethrower_Particles, 180 - 10, 180 + 10, 0, 3);
	}
	
	part_particles_create(global.Player_Particles, x, y, global.Flamethrower_Particles, 5);
	#endregion
}