event_inherited();

// white flash on taking damage
if(white_flash){
	shader_set(shdr_takeDamage);
	if(!will_explode) draw_sprite_ext(sprite_index, image_index, x, y, -facing, 1, 0, c_white, 1);
	else draw_sprite_ext(sprite_index, image_index, x + sqr(sin(.5 * explode_timer)), y, -facing, 1, 0, c_white, 1);
	shader_reset();
} else {
	if(!will_explode) draw_sprite_ext(sprite_index, image_index, x, y, -facing, 1, 0, c_white, 1);
	else draw_sprite_ext(sprite_index, image_index, x + sqr(sin(.5 * explode_timer)), y, -facing, 1, 0, c_white, 1);
}
