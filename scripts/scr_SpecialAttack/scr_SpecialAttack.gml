// Handle special attacking
attack1 = argument0;
attack2 = argument1;



if(instance_exists(obj_Player)) {
	switch(obj_Player.state){
		case Wizards.fire:
			
			// Fireball Special
			if(attack1 && !obj_Player.testSwitch){
				if(obj_Player.mana >= obj_Player.fireSpecialCost){
					obj_Player.mana -= obj_Player.fireSpecialCost;
					instance_create_layer(x, y, layer, obj_Fireball);
				}
			}
			
			
			
			// Firebuff special
			if(attack2 && (!obj_Player.fireBuff) && (!obj_Player.testSwitch)){
				if(obj_Player.mana >= obj_Player.fireSpecialCost){
					obj_Player.mana -= obj_Player.fireSpecialCost;
					
					obj_Player.fireBuff = true;
				}
			}
			else if(attack2 && (obj_Player.fireBuff) && (!obj_Player.testSwitch)){
				
				obj_Player.fireBuff = false;
			}

			
			// flameLance Special
			else if(obj_Player.attack1 && obj_Player.testSwitch){
				
				if(obj_Player.mana >= obj_Player.fireSpecialCost){
					obj_Player.mana -= obj_Player.fireSpecialCost;
					instance_create_layer(x, y, layer, obj_FlameLance);
				}
			}
			
			
			 //flamethrower special
			else if(attack2 && obj_Player.testSwitch){
				if(obj_Player.mana >= obj_Player.fireSpecialCost){
					obj_Player.mana -= obj_Player.fireSpecialCost;
					
					if(!instance_exists(obj_Flamethrower)){
						instance_create_layer(x, y, layer, obj_Flamethrower);
					}
				}
			}
			

			
			break;
			
			
			
			
		case Wizards.water:
			// Create the water specials
			
			// heal
			if(attack1 && !obj_Player.testSwitch){
				if(obj_Player.mana >= obj_Player.waterSpecialCost){
					obj_Player.mana -= obj_Player.waterSpecialCost;
					
					instance_create_layer(x, y, "Effects", obj_WaterHeal);
				}
			}
			
			
			// bubble prison Special
			if(attack2 && (!obj_Player.fireBuff) && (!obj_Player.testSwitch)){
				if(obj_Player.mana >= obj_Player.waterSpecialCost){
					obj_Player.mana -= obj_Player.waterSpecialCost;
					instance_create_layer(x, y, layer, obj_BubbleProjectile);
				}
			}
			
			
			// TidalWave Special
			else if(obj_Player.attack1 && obj_Player.testSwitch){
				
				if(obj_Player.mana >= obj_Player.waterSpecialCost){
					obj_Player.mana -= obj_Player.waterSpecialCost;
					
					wave = instance_create_layer(x, y+10, layer, obj_TidalWave);
					wave.facing = 1;
					
					wave = instance_create_layer(x, y+10, layer, obj_TidalWave);
					wave.facing = -1;
					
				}
			}
			
			
			
			// Torrent Special
			else if(obj_Player.attack2 && obj_Player.testSwitch){
				
				if(obj_Player.mana >= obj_Player.waterSpecialCost){
					obj_Player.mana -= obj_Player.waterSpecialCost;
					instance_create_layer(x, y, layer, obj_Torrent);
				}
			}
			
			
			
			
			
			
			
			
			
			break;
			
			
			
			
			
		case Wizards.earth:
			// Create the earth specials
			
			// earth armor special
			if(attack1 && obj_Player.grounded && !obj_Player.testSwitch){
				if(obj_Player.mana >= obj_Player.earthSpecialCost){
					obj_Player.mana -= obj_Player.earthSpecialCost;
					obj_Player.haveEarthArmor = true;
				}
			}
			
			// earth spike special
			else if(attack2 && obj_Player.grounded && !obj_Player.testSwitch){
				if(obj_Player.mana >= obj_Player.earthSpecialCost){
					obj_Player.mana -= obj_Player.earthSpecialCost;
					instance_create_layer(x + (35 * obj_Player.facing), y + 45, layer, obj_EarthSpike);
				}
			}
			
			
			// earth punch Special
			else if(obj_Player.attack1 && obj_Player.grounded && obj_Player.testSwitch){
				
				if(obj_Player.mana >= obj_Player.earthSpecialCost){
					obj_Player.mana -= obj_Player.earthSpecialCost;
					
					obj_Player.velocity_x += 15 * obj_Player.facing;
					instance_create_layer(x, y, layer, obj_EarthPunch);
				}
			}
			
			// tipi Special
			else if(obj_Player.attack1 && obj_Player.grounded && obj_Player.testSwitch){
				
				if(obj_Player.mana >= obj_Player.earthSpecialCost){
					obj_Player.mana -= obj_Player.earthSpecialCost;
					instance_create_layer(x, y, layer, obj_FlameLance);
				}
			}
			
			
			
			break;
			
			
			
			
		case Wizards.air:
			// Create the air specials
			if(attack1){
				if(obj_Player.mana >= obj_Player.airSpecialCost){
					obj_Player.mana -= obj_Player.airSpecialCost;
					instance_create_layer(x, y, layer, obj_LightningBolt);
				}
			}
			
			
			if(attack2){
				if(obj_Player.mana >= obj_Player.airSpecialCost){
					obj_Player.mana -= obj_Player.airSpecialCost;
					
					obj_Player.dashActivate = true;
					obj_Player.alarm[3] = 10;

				}
			}
			
			
			break;
		default:
	}
}
