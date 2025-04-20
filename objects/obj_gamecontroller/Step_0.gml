/// @description Insert description here
// You can write your code in this editor
var prevaxislh = axislh
var prevaxislv = axislv
axislh = gamepad_axis_value(0,gp_axislh)
axislv = gamepad_axis_value(0,gp_axislv)
if global.inputtype == 0
{
	global.key_left = keyboard_check(vk_left)
	global.key_leftp = keyboard_check_pressed(vk_left)
	global.key_right = keyboard_check(vk_right)
	global.key_rightp = keyboard_check_pressed(vk_right)
	global.key_up = keyboard_check(vk_up)
	global.key_upp = keyboard_check_pressed(vk_up)
	global.key_down = keyboard_check(vk_down)
	global.key_downp = keyboard_check_pressed(vk_down)
	global.key_jump = keyboard_check_pressed(ord("Z"))
	global.key_dash = keyboard_check_pressed(ord("X"))
	global.key_run = keyboard_check(ord("C"))
	global.key_runp = keyboard_check_pressed(ord("C"))
	global.key_start = keyboard_check_pressed(ord("P"))
}
else if global.inputtype == 1
{
	global.key_left = keyboard_check(ord("A"))
	global.key_leftp = keyboard_check_pressed(ord("A"))
	global.key_right = keyboard_check(ord("D"))
	global.key_rightp = keyboard_check_pressed(ord("D"))
	global.key_up = keyboard_check(ord("W"))
	global.key_upp = keyboard_check_pressed(ord("W"))
	global.key_down = keyboard_check(ord("S"))
	global.key_downp = keyboard_check_pressed(ord("S"))
	global.key_jump = keyboard_check_pressed(vk_space)
	global.key_dash = keyboard_check_pressed(ord("E"))
	global.key_run = keyboard_check(vk_shift)
	global.key_runp = keyboard_check_pressed(vk_shift)
	global.key_start = keyboard_check_pressed(vk_escape)
}
else if global.inputtype == 2
{
	global.key_left = axislh < -global.sensitivity || gamepad_button_check(0,gp_padl)
	global.key_leftp = (axislh < -global.sensitivity && prevaxislh >= -global.sensitivity) || gamepad_button_check_pressed(0,gp_padl)
	global.key_right = axislh > global.sensitivity || gamepad_button_check(0,gp_padr)
	global.key_rightp = (axislh > global.sensitivity && prevaxislh <= global.sensitivity) || gamepad_button_check_pressed(0,gp_padr)
	global.key_up = axislv < -global.sensitivity || gamepad_button_check(0,gp_padu)
	global.key_upp = (axislv < -global.sensitivity && prevaxislv >= -global.sensitivity) || gamepad_button_check_pressed(0,gp_padu)
	global.key_down = axislv > global.sensitivity || gamepad_button_check(0,gp_padd)
	global.key_downp = (axislv > global.sensitivity && prevaxislv <= global.sensitivity) || gamepad_button_check_pressed(0,gp_padd)
	global.key_jump = gamepad_button_check_pressed(0,gp_face1)
	global.key_dash = gamepad_button_check_pressed(0,gp_face2)
	global.key_run = gamepad_button_check(0,gp_face3)
	global.key_runp = gamepad_button_check_pressed(0,gp_face3)
	global.key_start = gamepad_button_check_pressed(0,gp_start)
}
else
{
	global.key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || axislh < -global.sensitivity || gamepad_button_check(0,gp_padl)
	global.key_leftp = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || (axislh < -global.sensitivity && prevaxislh >= -global.sensitivity) || gamepad_button_check_pressed(0,gp_padl)
	global.key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || axislh > global.sensitivity || gamepad_button_check(0,gp_padr)
	global.key_rightp = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || (axislh > global.sensitivity && prevaxislh <= global.sensitivity) || gamepad_button_check_pressed(0,gp_padr)
	global.key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || axislv < -global.sensitivity || gamepad_button_check(0,gp_padu)
	global.key_upp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || (axislv < -global.sensitivity && prevaxislv >= -global.sensitivity) || gamepad_button_check_pressed(0,gp_padu)
	global.key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || axislv > global.sensitivity || gamepad_button_check(0,gp_padd)
	global.key_downp = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || (axislv > global.sensitivity && prevaxislv <= global.sensitivity) || gamepad_button_check_pressed(0,gp_padd)
	global.key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0,gp_face1)
	global.key_dash = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0,gp_face2)
	global.key_run = keyboard_check(vk_control) || keyboard_check(ord("C")) || gamepad_button_check(0,gp_face3)
	global.key_runp = keyboard_check_pressed(vk_control) || keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0,gp_face3)
	global.key_start = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("P")) || gamepad_button_check_pressed(0,gp_start)
}