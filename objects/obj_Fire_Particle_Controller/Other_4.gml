#region Instantiate Particle Systems
global.Fire_Particles = part_type_create();
global.Smoke_Particles = part_type_create();
global.Explode_Particles = part_type_create();
global.Explode_Particles_Small = part_type_create();
global.Flamethrower_Particles = part_type_create();
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

#region
part_type_alpha2(global.Explode_Particles, 1, 0);
part_type_sprite(global.Explode_Particles, spr_Explosion_Part_Large, true, false, true);
part_type_speed(global.Explode_Particles, .05, .2, -.001, false);
part_type_direction(global.Explode_Particles, 0, 360, 0, false);
part_type_life(global.Explode_Particles, 10, 60);
#endregion

#region
part_type_alpha2(global.Explode_Particles_Small, 1, 0);
part_type_sprite(global.Explode_Particles_Small, spr_Explosion_Part_Small, true, false, true);
part_type_speed(global.Explode_Particles_Small, .07, .9, -.002, 0);
part_type_direction(global.Explode_Particles_Small, 0, 360, 0, 0);
part_type_gravity(global.Explode_Particles_Small, .02, 270);
#endregion

#region
part_type_alpha2(global.Flamethrower_Particles, 1, .5);
part_type_direction(global.Flamethrower_Particles, -15, 15, 0, .01);
part_type_speed(global.Flamethrower_Particles, 1, 3, -.01, .01);
part_type_life(global.Flamethrower_Particles, 30, 45);
part_type_sprite(global.Flamethrower_Particles, spr_Flamethrower_Part, true, false, false);
part_type_gravity(global.Flamethrower_Particles, .005, 90);

#endregion