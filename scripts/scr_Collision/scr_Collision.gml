
collide = false;

if(place_meeting(x + horizontal, y, obj_Wall)){
	collide = true;
}
else if(place_meeting(x + horizontal, y, obj_EnemyChargerGround)){
	collide = true;
}
else if(place_meeting(x + horizontal, y, obj_Slime)){
	collide = true;
}
else if(place_meeting(x + horizontal, y, obj_SpawnerSlimer)){
	collide = true;
}
else if(place_meeting(x + horizontal, y, obj_EnemyChargerGround)){
	collide = true;
}