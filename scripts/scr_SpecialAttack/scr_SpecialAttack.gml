// Handle special attacking
attack1 = argument0;
attack2 = argument1;


if(instance_exists(obj_Player)) {
	switch(obj_Player.state){
		case Wizards.fire:
			
			// Fireball Special
			if(attack1){
				if(obj_Player.mana >= obj_Player.fireSpecialCost){
					obj_Player.mana -= obj_Player.fireSpecialCost;
					instance_create_layer(x, y, "Instances", obj_Fireball);
				}
			}
			
			
			// self explosion special
			//else if(attack2){
			//	if(obj_Player.mana >= obj_Player.fireSpecialCost){
			//		obj_Player.mana -= obj_Player.fireSpecialCost;
			//		obj_Player.hitpoints -= 20;
			//		instance_create_layer(x, y, "Instances", obj_SelfExplosion);
			//	}
			//}
			
			
			
			// combust Special
			else if(obj_Player.attack2){
				
				if(obj_Player.mana >= obj_Player.fireSpecialCost){
					obj_Player.mana -= obj_Player.fireSpecialCost;
					instance_create_layer(x, y, "Instances", obj_Combust);
				}
			}
			
			
			
			
			
			
			
			
			break;
		case Wizards.water:
			// Create the water special on top of the player
			
			// heal
			if(attack1){
				if(obj_Player.mana >= obj_Player.waterSpecialCost){
					obj_Player.mana -= obj_Player.waterSpecialCost;
					
					if((obj_Player.hitpoints + 30) > 100){
						obj_Player.hitpoints = 100;
					}
					else{
						obj_Player.hitpoints += 30;
					}
					instance_create_layer(x, y, "Effects", obj_WaterHeal);
				}
			}
			
			
			// bubble prison Special
			else if(attack2){
				if(obj_Player.mana >= obj_Player.waterSpecialCost){
					obj_Player.mana -= obj_Player.waterSpecialCost;
					instance_create_layer(x, y, "Instances", obj_BubbleProjectile);
				}
			}
			
			
			
			
			break;
		case Wizards.earth:
			// Create the earth special on top of the player
			break;
		case Wizards.air:
			// Create the air special in front of the player
			break;
		default:
	}
}
