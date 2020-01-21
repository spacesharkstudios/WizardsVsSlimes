repeat(irandom_range(5, 7)){
	part_particles_create(global.Player_Particles, x, y, global.Explode_Particles, 3);
	part_particles_create(global.Player_Particles, x, y, global.Explode_Particles_Small, 4);
}

//alarm[0] = room_speed * 0.4