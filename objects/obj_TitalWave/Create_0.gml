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

alarm[0] = room_speed * 5;