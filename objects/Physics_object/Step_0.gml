/// @description Mostly Collisions

velocity_y += gravity_scale;
// collision with wall
if(place_meeting(x, y + velocity_y, obj_Wall)) {
	while(!place_meeting(x, y + sign(velocity_y), obj_Wall)) {
		y += sign(velocity_y);
	}
	grounded = true;
	velocity_y = 0;
} else {
	grounded = false;
}
if(place_meeting(x + velocity_x, y, obj_Wall)){
	while(!place_meeting(x + sign(velocity_x), y, obj_Wall)){
		x += sign(velocity_x);
	}
	velocity_x = 0;
}

// collision with semisolid platforms
if(velocity_y > 0 && !place_meeting(x, y, obj_SemiSolidWall)){
	if(place_meeting(x, y + velocity_y, obj_SemiSolidWall)){
		while(!place_meeting(x, y + sign(velocity_y), obj_SemiSolidWall)){
			y += sign(velocity_y);
		}
		grounded = true;
		velocity_y = 0;
	} else{
		//grounded = false;
	}
}

// collision with physics objects
if(place_meeting(x, y + velocity_y, Physics_object)) {
	while(!place_meeting(x, y + sign(velocity_y), Physics_object)) {
		y += sign(velocity_y);
	}
	grounded = true;
	velocity_y = 0;
}
if(place_meeting(x + velocity_x, y, Physics_object)){
	while(!place_meeting(x + sign(velocity_x), y, Physics_object)){
		x += sign(velocity_x);
	}
	velocity_x = 0;
}

y += velocity_y;
x += velocity_x;