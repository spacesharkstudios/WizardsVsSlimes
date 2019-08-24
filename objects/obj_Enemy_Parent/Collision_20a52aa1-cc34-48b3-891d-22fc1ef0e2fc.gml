/// @description Getting Attacked Water

if(!invincible){
	invincible = true;
	hitpoints -= obj_Player.attack_damage;
	alarm[0] = invinciblity_timer;
}
if(hitpoints <= 0){
	instance_destroy();
}