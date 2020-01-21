if(obj_Player.state = Wizards.earth && obj_Player.grounded){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y, 100, obj_Attack_Earth);
}
else{
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y - 5, 100, obj_Attack);
}
