// Inherit the parent event
event_inherited();



// bubble prison
if(stun == true){
	active = false;
}
else if(bubblePrison == true){
	active = false;
	if(y <= (originY - 30)){
		
	}
	else{
		velocity_y -= 0.5;
	}
}


if(burning && burningTick){
	
	alarm[7] = room_speed * 0.5;
	burningTick = false;
	
}
