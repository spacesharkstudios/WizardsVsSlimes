/// @description Insert description here
// You can write your code in this editor
if(can_move){
	velocity_x = spd * facing;
}
// Inherit the parent event
event_inherited();

player_x = obj_Player.x;
player_y = obj_Player.y;


if(reacts_to_slime_barrier){
	if(place_meeting(x + velocity_x, y, obj_SlimeBarrier)){
		while(!place_meeting(x + sign(velocity_x), y, obj_SlimeBarrier)){
			x += sign(velocity_x);
		}
		facing *= -1;
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