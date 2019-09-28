
// Inherit the parent event
event_inherited();


if(can_move){
	// movement
	if(!grounded){
		velocity_x = facing*spd;
	} else if(wasGrounded == false && grounded = true) {
		velocity_x = 0;
		alarm[2] = 60;
	} else {
		velocity_x = 0;
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
				if (explode_timer = room_speed * 1.2) {
					//explode
					instance_create_layer(x, y, "Effects", obj_Explosion);
					instance_destroy();
				}
			}

	}

}


	
// animations
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