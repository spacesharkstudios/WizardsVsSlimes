// Passives are updated when switching states


if(instance_exists(obj_Player)){
	switch(obj_Player.state) {
		case Wizards.fire:
			// Set passives for the fire player
			obj_Player.canAirJump = false;
			obj_Player.spd = 3.5;
			obj_Player.jump_force = -7.5
			obj_Player.attack_damage = 10;
			obj_Player.attackTimer = 20;
			obj_Player.attack_offset = 4;
			obj_Player.attack_damage = 3;
			break;
		case Wizards.water:
			// Set passives for the water player
			obj_Player.canAirJump = false;
			obj_Player.spd = 3;
			obj_Player.jump_force = -7.5
			obj_Player.attack_damage = 5;
			obj_Player.attackTimer = 20;
			obj_Player.attack_offset = 4;
			obj_Player.attack_damage = 3;
			break;
		case Wizards.earth:
			// Set passives for the earth player
			obj_Player.canAirJump = false;
			obj_Player.spd = 2.7;
			obj_Player.jump_force = -7
			obj_Player.attack_damage = 7;
			obj_Player.attackTimer = 20;
			obj_Player.attack_offset = 4;
			obj_Player.attack_damage = 3;
			break;
		case Wizards.air:
			// Set passives for the air player
			obj_Player.canAirJump = true;
			obj_Player.spd = 4;
			obj_Player.jump_force = -8;
			obj_Player.attack_damage = 5;
			obj_Player.attackTimer = 20;
			obj_Player.attack_offset = -1;
			obj_Player.attack_damage = 3;
			break;
		default:
	}
}







