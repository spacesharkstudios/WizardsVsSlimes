// only works for xbox controllers
// any controller run through steam is considered an xbox controller

controller = argument0;

// default inputs
input_left = keyboard_check(global.controls[? "left"]);
input_right = keyboard_check(global.controls[? "right"]);
input_jump = keyboard_check_pressed(global.controls[? "jump"]);
input_change1 = keyboard_check_pressed(global.controls[? "change1"]);
input_change2 = keyboard_check_pressed(global.controls[? "change2"]);
input_change3 = keyboard_check_pressed(global.controls[? "change3"]);
input_change4 = keyboard_check_pressed(global.controls[? "change4"]);
input_attack = keyboard_check_pressed(ord("I"));

switchButton = keyboard_check_pressed(ord("T"));

input_specialAttack1 = keyboard_check_pressed(ord("O"));

if(obj_Player.testSwitch && (obj_Player.state == Wizards.fire)){
	input_specialAttack2 = keyboard_check(ord("P"));
}
else{
	input_specialAttack2 = keyboard_check_pressed(ord("P"));
}



// if gamepad is connected
if(gamepad_is_connected(controller)){
	// gamepad inputs go here
}