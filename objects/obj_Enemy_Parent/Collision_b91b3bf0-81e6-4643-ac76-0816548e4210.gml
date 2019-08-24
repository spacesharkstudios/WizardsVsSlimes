/// @description Getting Attacked Fire

if(!invincible){
	invincible = true;
	hitpoints -= obj_Player.attack_damage;
	alarm[0] = invinciblity_timer;
	alarm[11] = scr_Knockback(2 * obj_Player.facing, -5, id);
}
if(hitpoints <= 0){
	instance_destroy();
}