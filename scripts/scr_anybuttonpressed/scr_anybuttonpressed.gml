// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gamepad_any_button_pressed(gpid){ // YOU'LL RUE THE DAY YOU DID NOT PUT AN ANY BUTTON, YOYOGAMES...
	if gamepad_button_check_pressed(gpid,gp_face1) ||
	gamepad_button_check_pressed(gpid,gp_face2) ||
	gamepad_button_check_pressed(gpid,gp_face3) ||
	gamepad_button_check_pressed(gpid,gp_face4) ||
	gamepad_button_check_pressed(gpid,gp_padl) ||
	gamepad_button_check_pressed(gpid,gp_padr) ||
	gamepad_button_check_pressed(gpid,gp_padu) ||
	gamepad_button_check_pressed(gpid,gp_padd) ||
	gamepad_button_check_pressed(gpid,gp_start) ||
	gamepad_button_check_pressed(gpid,gp_select) ||
	gamepad_button_check_pressed(gpid,gp_shoulderl) ||
	gamepad_button_check_pressed(gpid,gp_shoulderr) ||
	gamepad_button_check_pressed(gpid,gp_shoulderlb) ||
	gamepad_button_check_pressed(gpid,gp_shoulderrb) ||
	gamepad_button_check_pressed(gpid,gp_stickl) ||
	gamepad_button_check_pressed(gpid,gp_stickr) ||
	gamepad_button_check_pressed(gpid,gp_touchpadbutton)
	{
		return true;
	}
	else {
		return false;
	}
}