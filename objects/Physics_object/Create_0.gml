/// @description Initial physics code

// define velocities
prev_velocity_y = velocity_y;

grounded = false; // set to true if the player is on the ground
wasGrounded = grounded;
landing = false;

is_knocked_back = false; // set to true when the object is taking knockback

facing = 1;