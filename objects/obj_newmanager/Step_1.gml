var prevaxislh = axislh
var prevaxislv = axislv
axislh = gamepad_axis_value(0,gp_axislh)
axislv = gamepad_axis_value(0,gp_axislv)

if (global.inputtype != 3)
{
	//if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_escape))
	//	global.inputtype = global.keytype
	if (gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_start))
		global.inputtype = 2
	// NOT ANYMORE!
}
if (global.inputtype == 0) || (global.inputtype == 3)
{
	global.p1_key_left = keyboard_check(global.p1_leftkey)
	global.p1_key_leftp = keyboard_check_pressed(global.p1_leftkey)
	global.p1_key_right = keyboard_check(global.p1_rightkey)
	global.p1_key_rightp = keyboard_check_pressed(global.p1_rightkey)
	global.p1_key_up = keyboard_check(global.p1_upkey)
	global.p1_key_upp = keyboard_check_pressed(global.p1_upkey)
	global.p1_key_down = keyboard_check(global.p1_downkey)
	global.p1_key_downp = keyboard_check_pressed(global.p1_downkey)
	global.p1_key_jump = keyboard_check(global.p1_jumpkey)
	global.p1_key_jumpp = keyboard_check_pressed(global.p1_jumpkey)
	global.p1_key_dash = keyboard_check(global.p1_dashkey)
	global.p1_key_dashp = keyboard_check_pressed(global.p1_dashkey)
	global.p1_key_run = keyboard_check(global.p1_runkey)
	global.p1_key_runp = keyboard_check_pressed(global.p1_runkey)
	global.p1_key_start = keyboard_check_pressed(global.p1_startkey) && !keyboard_check(vk_alt)
	global.p1_key_menuaccept = global.p1_key_jumpp || global.p1_key_start
	global.p1_key_menuquit = global.p1_key_dashp
}
else if global.inputtype == 2
{
	if gamepad_is_connected(0)
	{
		global.p1_key_left = axislh < -global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padl)
		global.p1_key_leftp = (axislh < -global.sensitivity && prevaxislh >= -global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padl)
		global.p1_key_right = axislh > global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padr)
		global.p1_key_rightp = (axislh > global.sensitivity && prevaxislh <= global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padr)
		global.p1_key_up = axislv < -global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padu)
		global.p1_key_upp = (axislv < -global.sensitivity && prevaxislv >= -global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padu)
		global.p1_key_down = axislv > global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padd)
		global.p1_key_downp = (axislv > global.sensitivity && prevaxislv <= global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padd)
		global.p1_key_jump = gamepad_button_check(global.p1_controlslot,gp_face1)
		global.p1_key_jumpp = gamepad_button_check_pressed(global.p1_controlslot,gp_face1)
		global.p1_key_dash = gamepad_button_check(global.p1_controlslot,gp_face2)
		global.p1_key_dashp = gamepad_button_check_pressed(global.p1_controlslot,gp_face2)
		global.p1_key_run = gamepad_button_check(global.p1_controlslot,gp_face3)
		global.p1_key_runp = gamepad_button_check_pressed(global.p1_controlslot,gp_face3)
		global.p1_key_start = gamepad_button_check_pressed(global.p1_controlslot,gp_start)
		global.p1_key_menuaccept = global.p1_key_jumpp || global.p1_key_start
		global.p1_key_menuquit = global.p1_key_dashp
	}
	else if !instance_exists(obj_nocontroller)
	{
		instance_create_depth(0,0,0,obj_nocontroller)
	}
}
else
{
	global.p1_key_left = false
	global.p1_key_leftp = false
	global.p1_key_right = false
	global.p1_key_rightp = false
	global.p1_key_up = false
	global.p1_key_upp = false
	global.p1_key_down = false
	global.p1_key_downp = false
	global.p1_key_jump = false
	global.p1_key_jumpp = false
	global.p1_key_dash = false
	global.p1_key_dashp = false
	global.p1_key_run = false
	global.p1_key_runp = false
	global.p1_key_start = false
}
global.globaltimer++
if (windowtimer > 0)
	windowtimer--

if (windowtimer < 1 || newwindowname != windowname)
{
	if (windowpos < 1)
		windowpos += 0.05
	else if (newwindowname != windowname)
		windowname = newwindowname
}
else
{
	if (windowpos > 0)
		windowpos -= 0.05
}