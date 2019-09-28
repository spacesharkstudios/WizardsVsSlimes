// draw health bar over the enemy
if(hitpoints != max_hitpoints){
	draw_sprite_ext(spr_Enemy_Healthbar, 0, x - sprite_get_width(spr_Enemy_Healthbar), y - 18, 2 * (hitpoints / max_hitpoints), 2, 0, c_white, 1);
}