/// @description Fire Projectile

bullet = instance_create_layer(x + (sign(facing) * 23), y + 1, layer, obj_SlimezookaBullet);
bullet.myFacing = facing;