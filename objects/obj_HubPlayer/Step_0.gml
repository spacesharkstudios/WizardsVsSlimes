var input_left = keyboard_check(ord("A"));
var input_right = keyboard_check(ord("D"));

var move = input_right - input_left;

// sprite facing
if (move > 0) {
	image_xscale = 1;
	facing = 1;
} else if (move < 0) {
	image_xscale = -1;
	facing = -1;
}