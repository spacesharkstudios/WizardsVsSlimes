
x = x + (myFacing * spd);

existance++;

if(existance >= 100){
	instance_destroy();
}

if(place_meeting(x, y, obj_Players)){
	scr_DamagePlayer(true, obj_EnemyHeavyRanged.damage);
	instance_destroy();
}

