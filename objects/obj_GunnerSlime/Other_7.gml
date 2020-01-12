if(state == MG_states.shoot){
	bullet = instance_create_layer(x, y, layer, obj_Bullet);
	bullet.myFacing = -facing;
	num_shots_left --;
}