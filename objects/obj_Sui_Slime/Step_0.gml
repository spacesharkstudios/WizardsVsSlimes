
// Inherit the parent event
event_inherited();

image_speed = sign(velocity_x);

if(can_move){
	velocity_x = spd * facing;
}
else{
	velocity_x = 0;
}



if(reacts_to_slime_barrier){
	
	if(place_meeting(x + velocity_x, y, obj_Player)){
		while(!place_meeting(x + sign(velocity_x), y, obj_Player)){
			x += sign(velocity_x);
		}
		scr_DamagePlayer(damage);
	}
	if(!place_meeting(x, y, obj_SlimeBarrier)){
		if(place_meeting(x + velocity_x, y, obj_SlimeBarrier)){
			while(!place_meeting(x + sign(velocity_x), y, obj_SlimeBarrier)){
				x += sign(velocity_x);
			}
			facing *= -1;
		}
	}
	if(place_meeting(x + velocity_x, y, Physics_object)){
		while(!place_meeting(x + sign(velocity_x), y, Physics_object)){
			x += sign(velocity_x);
		}
		facing *= -1;
	}
	if(place_meeting(x + velocity_x, y, obj_Wall)){
		while(!place_meeting(x + sign(velocity_x), y, obj_Wall)){
			x += sign(velocity_x);
		}
		facing *= -1;
	}
}







if(instance_exists(obj_Player)){
	if(active){

		//Explosion Code//

		//checks to see if close to player
		//then stops
		if (abs(x - obj_Player.x) <= 100 && abs(y - obj_Player.y) <= 100) {
			velocity_x = 0;
			will_explode = true;	
		}

			//if explosion is true, then explode in .75 seconds
			if (will_explode == true) {
				explode_timer++;
				if (explode_timer = room_speed * 0.75) {
					//explode
					instance_create_layer(x, y, "Effects", obj_Explosion);
					instance_destroy();
				}
			}
		
	}
	else{
		velocity_x = 0;
	}
}