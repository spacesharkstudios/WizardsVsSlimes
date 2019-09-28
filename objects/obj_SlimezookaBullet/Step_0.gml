
x = x + (myFacing * spd);

if(myFacing == 1){
	image_xscale = -1;
}
else{
	image_xscale = 1;
}


if(place_meeting(x, y, obj_Player)){
	scr_DamagePlayer(damage);
	instance_destroy();
}

