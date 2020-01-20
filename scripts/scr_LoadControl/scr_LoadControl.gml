
control = argument0;
default_value = argument1;
value = ini_read_string("Controls", control, default_value);

ds_map_add(global.controlKeys, control, value);
ini_write_string("Controls", control, value);

switch (value) {
	case "space":
		key = vk_space; break;
	case "up":
		key = vk_up; break;
	case "down":
		key = vk_down; break;
	case "right":
		key = vk_right; break;
	case "left":
		key = vk_left; break;
	case "shift":
		key = vk_shift; break;
	case "tab":
		key = vk_tab; break;
	case "ctrl":
		key = vk_control; break;
	default:
		key = ord(value); break;
}

ds_map_add(global.controls, control, key);
return key;
