// Handle special attacking
if(instance_exists(obj_Player)) {
	switch(obj_Player.state){
		case Wizards.fire:
			// Create the fire special 20 units infrot of player
			break;
		case Wizards.water:
			// Create the water special on top of the player
			break;
		case Wizards.earth:
			// Create the earth special on top of the player
			break;
		case Wizards.air:
			// Create the air special in front of the player
			break;
		default:
	}
}
