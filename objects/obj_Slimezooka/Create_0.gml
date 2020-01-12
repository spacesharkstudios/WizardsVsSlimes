

event_inherited();

active = true;

//movement
canJump = true;
spd = 0.7;
facing = 1;

canFire = true;

manaValue = 25;

animate_attack = false;

hitpoints = 20;

state_switch = false;
alarm[5] = irandom(240);


enum states{
	idle,
	patrol,
	attack,
	alerted,
	hit,
	agro
}
state = states.idle;