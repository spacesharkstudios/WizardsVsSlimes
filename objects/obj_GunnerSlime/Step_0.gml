
event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		switch(state){
			case MG_states.idle:
				// play idle animation and sit still
				// can transition into alert and hit
				
				sprite_index = spr_MachineGunSlime_Idle;
				velocity_x = 0;
				
				// look for the player
				if(collision_line(x, y, x + -detect_range * facing, y, obj_Player, false, true)){
					// check for walls in between the agent and the player
					var _list = ds_list_create();
					var _num = collision_line_list(x, y, x + -detect_range * facing, y, obj_Wall, false, true, _list, false);
					if(_num > 0){
						for(i = 0; i < _num; i++){
							var dist_to_wall = abs(x - ds_list_find_value(_list, i).x);
							var dist_to_player = abs(x - obj_Player.x);
							if(dist_to_player < dist_to_wall){
								state_switch = true;
							}
						}
						ds_list_destroy(_list);
					} else {
						state_switch = true;
					}
				}
				
				if(state_switch){
					state = MG_states.alert;
				}
				break;
			case MG_states.alert:
				// face the player, play the idle animation
				// can transition into shoot and idle and hit
				
				sprite_index = spr_MachineGunSlime_Idle;
				
				facing = sign(x - obj_Player.x);
				
				velocity_x = 0;
				
				if(collision_line(x, y, x + -detect_range * facing * 2, y, obj_Player, false, true) && alarm[5] == -1){
					// check for walls in between the agent and the player
					var _list = ds_list_create();
					var _num = collision_line_list(x, y, x + -detect_range * facing * 2, y, obj_Wall, false, true, _list, false);
					if(_num > 0){
						for(i = 0; i < _num; i++){
							var dist_to_wall = abs(x - ds_list_find_value(_list, i).x);
							var dist_to_player = abs(x - obj_Player.x);
							if(dist_to_player < dist_to_wall){
								state_switch = true;
								alarm[4] = idle_return_time;
							}
						}
						ds_list_destroy(_list);
					} else {
						state_switch = true;
						alarm[4] = idle_return_time;
					}
				} else {
					state_switch = false;
				}
				
				// wait an amount of time before going idle again
				if(facing = 0) facing = 1;
				if(state_switch){
					state = MG_states.shoot;
					num_shots_left = 3;
				}
				break;
			case MG_states.shoot:
				// play the shoot animation and shoot three bullets and then transition
				// can transition into alert and idle and hit
				
				velocity_x = 0;
				
				sprite_index = spr_MachineGunSlime_Shooting;
				
				if (num_shots_left == 0 && state_switch){
					state = MG_states.alert;
					alarm[5] = burst_delay;
					state_switch = false;
				}
				
				break;
			case MG_states.hit:
				// set flag to flash white and then 
				// can transition into idle and alert
				
				if(!invincible) state = MG_states.alert;
				
				break;
		}
		image_xscale = facing;
	}
}