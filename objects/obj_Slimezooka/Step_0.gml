
event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		switch(state){
			case SZ_states.idle:
				// sit still, set the sprite to idle animation
				// after a timer, random chance to switch to partol
				// can transition into partol, hit, and alerted
				
				sprite_index = spr_Slimezooka_Idle;
				velocity_x = 0;
				
				// transitions
				if(state_switch && irandom(100) = 3){
					alarm[5] = 200;
					state_switch = false
					state = SZ_states.patrol;
				}
				// switch to alerted
				if(point_distance(x, y, obj_Player.x, obj_Player.y) <= alert_radius){
					alarm[5] = 15;
					state_switch = false;
					state = SZ_states.alerted;
				}
				
				break;
			case SZ_states.patrol:
				// move to the left or right for a pre-defined length and then transition into idle
				// set sprite to moving
				// can transition into idle, hit, and alerted
				
				sprite_index = spr_Slimesooka_Move;
				velocity_x = spd * facing;
				
				// transitions
				if(state_switch){
					alarm[5] = irandom_range(200, 240);
					state_switch = false;
					facing = -facing;
					state = SZ_states.idle;
				}
				// switch to alerted
				if(point_distance(x, y, obj_Player.x, obj_Player.y) <= alert_radius){
					alarm[5] = 15;
					state_switch = false;
					state = SZ_states.alerted;
				}
				
				break;
			case SZ_states.attack:
				// sit still and charge attack, set sprite to attacking
				// after attack is at a certain point, fire projectile
				// can transition into agro and hit
				
				velocity_x = 0;
				sprite_index = spr_Slimezooka_Attack;
				
				if(state_switch){
					state_switch = false;
					alarm[5] = attack_cd;
					state = SZ_states.agro;
				}
				
				break;
			case SZ_states.alerted:
				// sit still and "notice the player"
				// after a time period, transition into agro
				// can transition into agro, attacking, and hit
				
				velocity_x = 0;
				
				// switch to agro
				if(state_switch){
					state = SZ_states.agro;
				}
				
				break;
			case SZ_states.agro:
				// attempt to maintain a distance from the player
				// if the player is too close, move away
				// if the player is too far, move closer
				// don't run off of cliffs
				// can transition into attack and hit
				
				// set facing if the player is too far or too close
				if(point_distance(x, y, obj_Player.x, obj_Player.y) < player_too_close){
					facing = -sign(obj_Player.x - x);
					if(facing == 0) facing = 1;
					velocity_x = (spd * 1.2) * facing;
					sprite_index = spr_Slimesooka_Move;
				} else if(point_distance(x, y, obj_Player.x, obj_Player.y) > attack_range) {
					facing = sign(obj_Player.x - x);
					if(facing == 0) facing = -1;
					velocity_x = (spd * 1.2) * facing;
					sprite_index = spr_Slimesooka_Move;
				} else {
					velocity_x = 0;
					facing = sign(obj_Player.x - x);
					sprite_index = spr_Slimezooka_Idle;
				}
				
				if(point_distance(x, y, obj_Player.x, obj_Player.y) <= attack_range && state_switch){
					state_switch = false;
					state = SZ_states.attack;
					facing = sign(obj_Player.x - x);
					alarm[4] = 24;
				}
				
				break;
			case SZ_states.hit:
				// brief hitstun and knockback
				// set the flag to flash white
				// after a time delay, remove the flag and transition
				// can transition into agro, idle, and patrol
				
				break;
		}
		image_xscale = -facing;
	}
}