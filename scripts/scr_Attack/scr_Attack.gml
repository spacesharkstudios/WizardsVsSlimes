if(obj_Player.state = Wizards.fire){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y - 5, 100, obj_Attack_Fire);
} else if(obj_Player.state = Wizards.water){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y + 2, 100, obj_Attack_Water);
} else if(obj_Player.state = Wizards.earth && obj_Player.grounded){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y, 100, obj_Attack_Earth);
} else if(obj_Player.state = Wizards.air){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y + 4, 100, obj_Attack_Air);
} else{
	
}