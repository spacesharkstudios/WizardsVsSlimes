event_inherited();

if(white_flash){
	shader_set(shdr_takeDamage);
	draw_self();
	shader_reset();
} else {
	draw_self();
}

//draw_text(x, y - 8, hitpoints);
//draw_text_ext_transformed(x - 4, y - 16, hitpoints,
//10, 100000, .5, .5, 0);