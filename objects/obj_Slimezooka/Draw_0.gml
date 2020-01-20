if(white_flash){
	shader_set(shdr_takeDamage);
	draw_self();
	shader_reset();
} else {
	draw_self();
}

draw_text(x, y - 8, hitpoints);
//draw_text_ext_transformed(x - 4, y - 16, point_distance(x, y, obj_Player.x, obj_Player.y) <= alert_radius,
//10, 100000, .5, .5, 0);