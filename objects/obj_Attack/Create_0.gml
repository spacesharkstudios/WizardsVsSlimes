spd = 10;
playerFacing = 1;


if(obj_Player.facing == 1){
	image_xscale = 1;
	playerFacing = 1;
}
else{
	image_xscale = -1;
	playerFacing = -1;
}

alarm[0] = room_speed * 2;


if(obj_Player.state = Wizards.fire){
	sprite_index = spr_PlayerAttack_Fire;
} else if(obj_Player.state = Wizards.water){
	sprite_index = spr_PlayerAttack_Water;
} else if(obj_Player.state = Wizards.air){
	sprite_index = spr_PlayerAttack_Air;
}