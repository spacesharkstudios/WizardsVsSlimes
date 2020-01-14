

event_inherited();

active = true;

//movement
canJump = true;
spd = 3;
facing = 1;

damage = 20;
manaValue = 10;

hitpoints = 20;

enum CS_states{
	idle,
	agro,
	charging,
	ko,
	hit
}