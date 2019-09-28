
// Inherit the parent event
event_inherited();

// combust special
if(instance_exists(obj_Combust)){
	if(burning && didYouExplode){
		if ((abs(x - obj_Combust.x) <= 100) && (abs(y - obj_Combust.y) <= 100)) {
			instance_create_layer(x, y, layer, obj_FireBallExplosion);
			burning = false;
		}
	}
}

if(bubblePrison == true){
	velocity_x += 2;
}


