
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
		if (distance_to_object(obj_Player) < 150) {
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
		
		
		if(canJump){
			if((y - obj_Player.y) > 20){
				canJump = false;
				alarm[2] = room_speed * 2;
				velocity_y += -7;
			}
		}
		
		
		// Attacks player
		if(gotThere && canFire){
			alarm[4] = 10;
			animate_attack = true;
			alarm[3] = 29;
			canFire = false;
			alarm[1] = room_speed * 1.5;
		}
		
		#region Animations
		if(animate_attack){
			sprite_index = spr_Slimezooka_Attack;
		} else if(velocity_x != 0){
			sprite_index = spr_Slimesooka_Move;
		} else {
			sprite_index = spr_Slimezooka_Idle;
		}
		#endregion
		
		
		
	}
	else{
		sprite_index = spr_Slimezooka_Idle;
	}
}