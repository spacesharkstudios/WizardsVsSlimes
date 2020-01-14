event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		switch(state){
			case CS_states.idle:
				// stand still and wait for the player
				break;
			case CS_states.agro:
				// get ready to charge
				break;
			case CS_states.charging:
				// charge in one direction until hitting a wall
				break;
			case CS_states.ko:
				// stand still because the agent is knocked out
				break;
			case CS_states.hit:
				// hit logic?
				break;
		}
	}
}