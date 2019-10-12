
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
	facing = sign(obj_Player.x - x);
	
	if(active){

		//Explosion Code//

		//checks to see if close to player
		//then stops
		if (point_distance(x, y, obj_Player.x, obj_Player.y) <= 50) {
			velocity_x = 0;
			can_move = false;
			will_explode = true;
			//sprite_index = spr_Suislime_Charging;
		}

			//if explosion is true, then explode in .75 seconds
			if (will_explode == true) {
				explode_timer++;
				if (explode_timer = room_speed * 1) {
					//explode
					instance_create_layer(x, y, "Effects", obj_Explosion);
					instance_destroy();
				}
			}

	}
}

if(grounded && !will_explode){
	sprite_index = spr_Suislime_Idle;
} else if (!grounded && !will_explode){
	if(velocity_y < 0){
		sprite_index = spr_Suislime_Jump_Rising;
	} else {
		sprite_index = spr_Suislime_Jump_Falling;
	}
} else {
	sprite_index = spr_Suislime_Charging;
}
image_xscale = facing;

wasGrounded = grounded;