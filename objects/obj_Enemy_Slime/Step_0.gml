
// Inherit the parent event
event_inherited();


image_speed = sign(velocity_x);

if(can_move){
	velocity_x = spd * facing;
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

