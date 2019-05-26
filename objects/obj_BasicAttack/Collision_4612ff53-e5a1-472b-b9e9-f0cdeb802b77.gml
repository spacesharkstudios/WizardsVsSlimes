if(other.damageCooldown >= 15){
	other.HP = other.HP - damage;
	other.damageCooldown = 0;
	
	//instance_create_layer(x,y,"Effects", obj_HitEffect);
	
}