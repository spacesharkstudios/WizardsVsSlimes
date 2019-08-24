new_vx = argument0
new_vy = argument1
obj_id = argument2

variable_instance_set(obj_id, "can_move", false);
variable_instance_set(obj_id, "velocity_x", new_vx);
variable_instance_set(obj_id, "velocity_y", new_vy);

return 15;