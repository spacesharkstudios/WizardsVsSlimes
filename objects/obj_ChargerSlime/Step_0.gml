
event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		
		// controls facing variable
		if(x > obj_Player.x){
			facing = -1;
			image_xscale = 1;
		}
		else{
			facing = 1;
			image_xscale = -1;
		}
		
		// Am I close enough to stop moving and attack?
		if (distance_to_object(obj_Player) < 8) {
			gotThere = true;
			velocity_x = 0;
		// Is there an invisible wall?
		} else if(place_meeting(x + velocity_x, y, obj_WallAI)){
			while(!place_meeting(x + sign(velocity_x), y, obj_WallAI)){
				x += sign(velocity_x);
			}
			velocity_x = 0;
		}
		// Should I move left or right?
		else{
			velocity_x = facing * spd;
			gotThere = false;
		}
		
		// working somehow
		if(gotThere){
			sprite_index = spr_SlimeCharger_Idle;
		}
		else{
			sprite_index = spr_SlimeCharger_FullAssSprint;
		}
		
		
		if(canJump){
			if((y - obj_Player.y) > 20){
				canJump = false;
				alarm[3] = room_speed * 2;
				velocity_y += -8;
			}
		}
		
		
		
		
	}
	else{
		velocity_x = 0;
		sprite_index = spr_SlimeCharger_Idle;
		
	}
}