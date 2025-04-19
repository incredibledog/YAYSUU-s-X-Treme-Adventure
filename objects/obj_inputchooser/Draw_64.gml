if global.inputtype == 0
{
	draw_set_font(global.optfont)
	draw_text(0,0,"CLASSIC")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"movement: arrow keys\njump: Z\ndash: X\nrun: C\nmenu: P")
}
else if global.inputtype == 1
{
	draw_set_font(global.optfont)
	draw_text(0,0,"MODERN")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"movement: WASD\njump: space\ndash: E\nrun: shift\nmenu: esc")
}
else if global.inputtype == 2
{
	draw_set_font(global.optfont)
	draw_text(0,0,"CONTROLLER")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"too lazy to describe :3")
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