

alarm[0] = room_speed * 0.25;
alarm[1] = room_speed * 6;

initialMoving = true;
damage = 5;
grounded = true;
facing = 1;

if(obj_Player.facing == 1){
	image_xscale = 1;
	facing = 1;
}
else{
	image_xscale = -1;
	facing = -1;
}