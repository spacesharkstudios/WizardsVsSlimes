//draw_text(10, 10, hitpoints);
window_scale = 4;

draw_sprite_ext(spr_GUI_background, 0, 4, 4, window_scale, window_scale, 0, c_white, 1);
draw_sprite_ext(spr_GUI_healthbar, 0, 20, 20, window_scale * (hitpoints / max_hitpoints), window_scale, 0, c_white, 1);
draw_sprite_ext(spr_GUI_manabar, 0, 20, 60, window_scale * (mana / 100), window_scale, 0, c_white, 1); // let me scale it motherfucker!
draw_sprite_ext(spr_GUI_overlay, 0, 4, 4, window_scale, window_scale, 0, c_white, 1);


draw_text(10, 100, grounded);