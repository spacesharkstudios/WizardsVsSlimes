// handles damage done to player
// handles earth passive

enemyDamage = argument0;

// sets playerInvincibility
if(!obj_Player.playerInvinciblity){
	if(obj_Player.state == Wizards.earth){
		
		if(obj_Player.haveEarthArmor){
			obj_Player.earthArmor -= (enemyDamage * 0.4);
		}
		else{
			obj_Player.hitpoints -= (enemyDamage * 0.4);
		}
		
		obj_Player.playerInvinciblity = true;
		obj_Player.alarm[2] = room_speed * 1;
		
	}
	else{
		
		obj_Player.hitpoints -= enemyDamage;
		obj_Player.playerInvinciblity = true;
		obj_Player.alarm[2] = room_speed * 1;
		
	}
	
}