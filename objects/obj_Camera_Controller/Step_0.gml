// update variables
if(instance_exists(obj_Player)){
	if(obj_Player.y > y + half_deadzone_height){
		xTo = obj_Player.x;
		yTo = obj_Player.y - half_deadzone_height;
	} else if(obj_Player.y < y - half_deadzone_height){
		xTo = obj_Player.x;
		yTo = obj_Player.y + half_deadzone_height;
	} else {
		xTo = obj_Player.x;
		yTo = y
	}
	
}

// update position
x += (xTo - x);
y += (yTo - y);



//clamping
x = clamp(x, halfPortW, room_width - halfPortW);
y = clamp(y, halfPortH, room_width - halfPortH);

camera_set_view_pos(cam, x - halfPortW, y - halfPortH);