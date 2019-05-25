// handles damage done to player

isKnockBack = argument0;
enemyDamage = argument1;

// if enemy can knock back player
if(isKnockBack){
	
	if (obj_Players.invincibility >= obj_Players.invincibilitySet) {
	if (obj_Players.state == 3) {
		if (obj_Players.earthBlock) {
			obj_Players.earthBlock = false;
			other.is_knocked_back = sign(x - other.x);
		} else {
			obj_Players.healthPoints = obj_Players.healthPoints - (enemyDamage / 2);
			other.is_knocked_back = sign(x - other.x);
		}
	} else {
		other.is_knocked_back = sign(x - other.x);
		obj_Players.healthPoints = obj_Players.healthPoints - enemyDamage;
	}
	obj_Players.invincibility = 0;
	}
}


// if enemy cannot knock back player
else{
	
	if (obj_Players.invincibility >= obj_Players.invincibilitySet) {
	if (obj_Players.state == 3) {
		if (obj_Players.earthBlock) {
			obj_Players.earthBlock = false;
		} else {
			obj_Players.healthPoints = obj_Players.healthPoints - enemyDamage;
		}
	} else {
		obj_Players.healthPoints = obj_Players.healthPoints - enemyDamage;
	}
	obj_Players.invincibility = 0;
}
	
	
	
	
	
	
	
}
