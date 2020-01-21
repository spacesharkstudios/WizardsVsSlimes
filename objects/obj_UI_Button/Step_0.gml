if(mouse_x >= x && mouse_x < x + sprite_width){
	if(mouse_y >= y && mouse_y < y + sprite_height){
		selected = true;
	} else {
		selected = false;
	}
} else {
	selected = false;
}