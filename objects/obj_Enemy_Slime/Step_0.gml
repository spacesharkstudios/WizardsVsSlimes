
// Inherit the parent event
event_inherited();


image_speed = sign(velocity_x);

if(can_move){
	velocity_x = spd * facing;
}

