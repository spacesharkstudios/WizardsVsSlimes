
if((obj_Player.hitpoints + 30) > 100){
	obj_Player.hitpoints = 100;
}
else{
	obj_Player.hitpoints += 30;
}



alarm[0] = room_speed * 3;