camera = obj_Camera_Controller;

x = camera.x + camera.halfPortW + 25;
y = camera.y + 35;

instance_create_depth(x, y, depth, obj_Cloud);
alarm[0] = irandom_range(100, 360);