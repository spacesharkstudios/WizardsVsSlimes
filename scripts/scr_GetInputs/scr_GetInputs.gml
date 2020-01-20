// only works for xbox controllers
// any controller run through steam is considered an xbox controller

controller = argument0;

// default inputs
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
input_change1 = keyboard_check_pressed(ord("1"));
input_change2 = keyboard_check_pressed(ord("2"));
input_change3 = keyboard_check_pressed(ord("3"));
input_change4 = keyboard_check_pressed(ord("4"));
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