
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
			
			
		
		// working somehow
		if(burstFire && gotThere){
			sprite_index = spr_MachineGunSlime_Shooting;
		}
		else{
			sprite_index = spr_MachineGunSlime_Idle;
		}
		
		
		if(canJump){
			if((y - obj_Player.y) > 20){
				canJump = false;
				alarm[3] = room_speed * 2;
				velocity_y += -8;
			}
		}
		
		
		// Attacks player with burstfire
		if(gotThere && burstFire){
			// firing 4 round burst
			if(canFire) {
				bullet = instance_create_layer(x + (sign(facing) * 23), y + 1, "instances", obj_Bullet);
				bullet.myFacing = facing;
				canFire = false;
				burstFireCounter++;
				alarm[1] = room_speed * 0.07;
			}
			// reset between bursts
			if(burstFireCounter = 3){
				burstFireCounter = 0;
				burstFire = false
				alarm[2] = room_speed * 1;
			}
		}
		
		
		
		
	}
}