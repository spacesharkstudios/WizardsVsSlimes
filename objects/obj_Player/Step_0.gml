/// @description Player Controls

// Get Inputs
scr_GetInputs(0);

#region Movement
// Set velocity_x
if(can_move){
	velocity_x = (input_right - input_left) * spd;
} else {
	velocity_x = 0;
}

// Set facing
if(velocity_x != 0){
	facing = sign(velocity_x);
}

// Jump
if(grounded && input_jump && can_move){
	velocity_y = -9.2;
}
if(!grounded && canAirJump && numAirJumps && input_jump && can_move){ // Air wizard only
	velocity_y = -9.2;
	numAirJumps --;
}

// When the player is on the ground
if(grounded){
	numAirJumps = maxAirJumps;
}

if(velocity_y > 0){
	gravity_scale = static_gravity_scale * 1.4;
} else {
	gravity_scale = static_gravity_scale;
}
#endregion

#region Set State
if(input_change1 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.fire;
	can_switch = false;
	attackTimer = 20;
	scr_Stats();
	
} else if(input_change2 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.water;
	can_switch = false;
	attackTimer = 20;
	firePassive = 0;
	scr_Stats();
	
} else if(input_change3 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.earth;
	can_switch = false;
	attackTimer = 20;
	firePassive = 0;
	scr_Stats();
	
} else if(input_change4 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.air;
	can_switch = false;
	attackTimer = 20;
	firePassive = 0;
	scr_Stats();
	
}
#endregion

#region Attacking
if(input_attack && can_attack){
	can_attack = false;
	alarm[1] = attackTimer;
	
	// Handling fire passive
	if(state == Wizards.fire){
		if(firePassive < 3){
			firePassive++;
		}
	}
	scr_Attack();
}


// Special Attacts
if(input_specialAttack1 || input_specialAttack2){
	scr_SpecialAttack(input_specialAttack1, input_specialAttack2);
}
#endregion

// Physics calculations
event_inherited();

#region Visuals
image_xscale = facing;
if(velocity_x != 0 && (grounded || landing)){
	sprite_index = spr_player_run;
} else if(velocity_x = 0 && (grounded || landing)){
	sprite_index = spr_player_idle;
} else if(velocity_y != 0){
	sprite_index = spr_player_jump;
} if(!can_attack && (grounded || landing)){
	sprite_index = spr_player_attack;
}


// Change the color of the wizard
rowIndex = state;
rowIndex = rowIndex mod colorSets;

vNormal = rowIndex / 256;

if(state = Wizards.fire){
	repeat((firePassive) * 5){
		part_particles_create(global.Player_Particles, x - .25 * sprite_width + irandom(sprite_width * .5), y + .5 * sprite_height - irandom(sprite_height * .5), global.Fire_Particles, 1);
		part_particles_create(global.Player_Particles, x - .25 * sprite_width + irandom(sprite_width * .5), y + .5 * sprite_height - irandom(sprite_height * .5), global.Smoke_Particles, 1);
	}
}
#endregion