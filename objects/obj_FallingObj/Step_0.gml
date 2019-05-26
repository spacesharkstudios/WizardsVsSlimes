
// knockback physics
event_inherited()

vertical = vertical + object_gravity;

// vertical movement
if (place_meeting(x, y + vertical, obj_Wall)) {
	while (!place_meeting(x, y + sign(vertical), obj_Wall)) {
		y += sign(vertical);
	}
	vertical = 0;
	jumped = false;
	knockback = 0;
}
else if(!place_free(x, y + vertical)){
		while (place_free(x, y + sign(vertical))) {
		y += sign(vertical);
	}
	vertical = 0;
	jumped = false;
	knockback = 0;
}
y += vertical;
