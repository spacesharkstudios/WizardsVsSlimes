image_xscale = -myFacing;

x = x + (myFacing * spd);


if(place_meeting(x, y, obj_Player)){
	scr_DamagePlayer(damage);
	instance_destroy();
}

