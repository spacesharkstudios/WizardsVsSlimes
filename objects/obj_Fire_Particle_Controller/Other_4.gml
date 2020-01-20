#region Instantiate Particle Systems
global.Fire_Particles = part_type_create();
global.Smoke_Particles = part_type_create();
#endregion

global.Player_Particles = part_system_create_layer(layer, true);

#region Fire Particles
part_type_shape(global.Fire_Particles, pt_shape_pixel);
part_type_size(global.Fire_Particles, 1, 1, .05, 0);
part_type_direction(global.Fire_Particles, 75, 105, 0, 1);
part_type_color3(global.Fire_Particles, c_yellow, c_red, c_gray);
part_type_speed(global.Fire_Particles, .3, .7, -.01, 0);
part_type_alpha2(global.Fire_Particles, .3, 0);
part_type_life(global.Fire_Particles, 70, 75);

#endregion

#region Smoke Particles
part_type_size(global.Smoke_Particles, 1, 2, .1, .5);
part_type_direction(global.Smoke_Particles, 70, 110, 0, 5);
part_type_color2(global.Smoke_Particles, c_black, c_gray);
part_type_alpha3(global.Smoke_Particles, 0, .5, 0);
part_type_speed(global.Smoke_Particles, .3, .7, -.015, 0);
part_type_life(global.Smoke_Particles, 70, 75);

#endregion