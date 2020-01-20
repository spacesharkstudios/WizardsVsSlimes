if(white_flash){
	shader_set(shdr_takeDamage);
	draw_self();
	shader_reset();
} else {
	//draw_line_width_color(x, y, x - detect_range * facing, y, 2, c_white, c_white);
	draw_self();
}

//draw_text(x, y - 8, hitpoints);
draw_text_ext_transformed(x - 4, y - 16, facing,
10, 100000, .5, .5, 0);