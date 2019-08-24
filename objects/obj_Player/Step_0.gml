/// @description Player Controls

// Get Inputs
scr_GetInputs(0);

// Set velocity_x
if(can_attack && can_move){
	velocity_x = (input_right - input_left) * spd;
} else {
	velocity_x = 0;
}

// Set facing
if(velocity_x != 0){
	facing = sign(velocity_x);
}

// Jump
if(grounded && input_jump && can_attack && can_move){
	velocity_y = -9.2;
}
if(!grounded && canAirJump && numAirJumps && input_jump && can_attack && can_move){ // Air wizard only
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

// set state
if(input_change1 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.fire;
	can_switch = false;
	attackTimer = 20;
	attack_offset = 4;
	scr_Passives();
} else if(input_change2 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.water;
	can_switch = false;
	
	scr_Passives();
} else if(input_change3 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.earth;
	can_switch = false;
	attackTimer = 20;
	scr_Passives();
} else if(input_change4 && can_switch){
	alarm[0] = changeTimer;
	state = Wizards.air;
	can_switch = false;
	attackTimer = 20;
	scr_Passives();
}
//scr_PassivesCont();
// Attacking
// ToDo add attacking
if(input_attack && can_attack){
	can_attack = false;
	alarm[1] = attackTimer;
	scr_Attack();
}

// Physics calculations
event_inherited();


// Handle visuals
image_xscale = facing;
if(velocity_x != 0 && grounded){
	sprite_index = spr_player_run;
} else if(velocity_x = 0 && grounded){
	sprite_index = spr_player_idle;
} else if(velocity_y != 0){
	sprite_index = spr_player_jump;
} if(!can_attack && grounded){
	sprite_index = spr_player_attack;
}

// Change the color of the wizard
rowIndex = state;
rowIndex = rowIndex mod colorSets;

vNormal = rowIndex / 256;