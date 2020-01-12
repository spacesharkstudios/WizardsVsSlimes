event_inherited();

active = true;

//movement
canJump = true;
spd = 1;
facing = 1;

canFire = true;
burstFire = true;
burstFireCounter = 0;

manaValue = 15;

hitpoints = 20;

enum MG_states{
	idle,
	alert,
	shoot,
	hit
}

state = MG_states.idle;