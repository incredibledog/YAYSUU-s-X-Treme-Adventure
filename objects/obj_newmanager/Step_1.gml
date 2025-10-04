var prevaxislh = axislh
var prevaxislv = axislv
axislh = gamepad_axis_value(global.p1_controlslot,gp_axislh)
axislv = gamepad_axis_value(global.p1_controlslot,gp_axislv)
var p2prevaxislh = p2axislh
var p2prevaxislv = p2axislv
p2axislh = gamepad_axis_value(global.p2_controlslot,gp_axislh)
p2axislv = gamepad_axis_value(global.p2_controlslot,gp_axislv)

if (global.inputtype != 3)
{
	if keyboard_check_pressed(vk_anykey) && global.inputtype != 0
		global.inputtype = 0
	if (gamepad_any_button_pressed(global.p1_controlslot) || axislh!=prevaxislh || axislv!=prevaxislv) && global.inputtype != 2
		global.inputtype = 2
	// NOT ANYMORE!
}
if (global.inputtype == 0) || (global.inputtype == 3)
{
	global.key_left = keyboard_check(global.p1_leftkey)
	global.key_leftp = keyboard_check_pressed(global.p1_leftkey)
	global.key_right = keyboard_check(global.p1_rightkey)
	global.key_rightp = keyboard_check_pressed(global.p1_rightkey)
	global.key_up = keyboard_check(global.p1_upkey)
	global.key_upp = keyboard_check_pressed(global.p1_upkey)
	global.key_down = keyboard_check(global.p1_downkey)
	global.key_downp = keyboard_check_pressed(global.p1_downkey)
	global.key_jump = keyboard_check(global.p1_jumpkey)
	global.key_jumpp = keyboard_check_pressed(global.p1_jumpkey)
	global.key_dash = keyboard_check(global.p1_dashkey)
	global.key_dashp = keyboard_check_pressed(global.p1_dashkey)
	global.key_run = keyboard_check(global.p1_runkey)
	global.key_runp = keyboard_check_pressed(global.p1_runkey)
	global.key_start = keyboard_check_pressed(global.p1_startkey) && !keyboard_check(vk_alt)
	global.key_menuaccept = global.key_jumpp || (global.key_start && !global.menubuttontype)
	global.key_menuquit = global.key_dashp || (global.key_start && global.menubuttontype)
}
else if global.inputtype == 2
{
	if gamepad_is_connected(0)
	{
		global.key_left = axislh < -global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padl)
		global.key_leftp = (axislh < -global.sensitivity && prevaxislh >= -global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padl)
		global.key_right = axislh > global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padr)
		global.key_rightp = (axislh > global.sensitivity && prevaxislh <= global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padr)
		global.key_up = axislv < -global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padu)
		global.key_upp = (axislv < -global.sensitivity && prevaxislv >= -global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padu)
		global.key_down = axislv > global.sensitivity || gamepad_button_check(global.p1_controlslot,gp_padd)
		global.key_downp = (axislv > global.sensitivity && prevaxislv <= global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padd)
		global.key_jump = gamepad_button_check(global.p1_controlslot,gp_face1)
		global.key_jumpp = gamepad_button_check_pressed(global.p1_controlslot,gp_face1)
		global.key_dash = gamepad_button_check(global.p1_controlslot,gp_face2)
		global.key_dashp = gamepad_button_check_pressed(global.p1_controlslot,gp_face2)
		global.key_run = gamepad_button_check(global.p1_controlslot,gp_face3)
		global.key_runp = gamepad_button_check_pressed(global.p1_controlslot,gp_face3)
		global.key_start = gamepad_button_check_pressed(global.p1_controlslot,gp_start)
		global.key_menuaccept = global.key_jumpp || global.key_start
		global.key_menuquit = global.key_dashp
	}
	else if !instance_exists(obj_nocontroller)
	{
		instance_create_depth(0,0,0,obj_nocontroller)
	}
}
if (global.p2inputtype == 0)
{
	global.p2_key_left = keyboard_check(global.p2_leftkey)
	global.p2_key_leftp = keyboard_check_pressed(global.p2_leftkey)
	global.p2_key_right = keyboard_check(global.p2_rightkey)
	global.p2_key_rightp = keyboard_check_pressed(global.p2_rightkey)
	global.p2_key_up = keyboard_check(global.p2_upkey)
	global.p2_key_upp = keyboard_check_pressed(global.p2_upkey)
	global.p2_key_down = keyboard_check(global.p2_downkey)
	global.p2_key_downp = keyboard_check_pressed(global.p2_downkey)
	global.p2_key_jump = keyboard_check(global.p2_jumpkey)
	global.p2_key_jumpp = keyboard_check_pressed(global.p2_jumpkey)
	global.p2_key_dash = keyboard_check(global.p2_dashkey)
	global.p2_key_dashp = keyboard_check_pressed(global.p2_dashkey)
	global.p2_key_run = keyboard_check(global.p2_runkey)
	global.p2_key_runp = keyboard_check_pressed(global.p2_runkey)
	global.p2_key_start = keyboard_check_pressed(global.p2_startkey) && !keyboard_check(vk_alt)
	global.p2_key_menuaccept = global.p2_key_jumpp || (global.p2_key_start && !global.menubuttontype)
	global.p2_key_menuquit = global.p2_key_dashp || (global.p2_key_start && global.menubuttontype)
}
else if global.p2inputtype == 2
{
	if gamepad_is_connected(0)
	{
		global.p2_key_left = p2axislh < -global.sensitivity || gamepad_button_check(global.p2_controlslot,gp_padl)
		global.p2_key_leftp = (p2axislh < -global.sensitivity && p2prevaxislh >= -global.sensitivity) || gamepad_button_check_pressed(global.p2_controlslot,gp_padl)
		global.p2_key_right = p2axislh > global.sensitivity || gamepad_button_check(global.p2_controlslot,gp_padr)
		global.p2_key_rightp = (p2axislh > global.sensitivity && prevaxislh <= global.sensitivity) || gamepad_button_check_pressed(global.p2_controlslot,gp_padr)
		global.p2_key_up = p2axislv < -global.sensitivity || gamepad_button_check(global.p2_controlslot,gp_padu)
		global.p2_key_upp = (p2axislv < -global.sensitivity && prevaxislv >= -global.sensitivity) || gamepad_button_check_pressed(global.p2_controlslot,gp_padu)
		global.p2_key_down = p2axislv > global.sensitivity || gamepad_button_check(global.p2_controlslot,gp_padd)
		global.p2_key_downp = (p2axislv > global.sensitivity && prevaxislv <= global.sensitivity) || gamepad_button_check_pressed(global.p1_controlslot,gp_padd)
		global.p2_key_jump = gamepad_button_check(global.p2_controlslot,gp_face1)
		global.p2_key_jumpp = gamepad_button_check_pressed(global.p2_controlslot,gp_face1)
		global.p2_key_dash = gamepad_button_check(global.p2_controlslot,gp_face2)
		global.p2_key_dashp = gamepad_button_check_pressed(global.p2_controlslot,gp_face2)
		global.p2_key_run = gamepad_button_check(global.p2_controlslot,gp_face3)
		global.p2_key_runp = gamepad_button_check_pressed(global.p2_controlslot,gp_face3)
		global.p2_key_start = gamepad_button_check_pressed(global.p2_controlslot,gp_start)
		global.p2_key_menuaccept = global.p2_key_jumpp || global.key_start
		global.p2_key_menuquit = global.p2_key_dashp
	}
	else if !instance_exists(obj_nocontroller)
	{
		global.p2inputtype = 0
	}
}
else
{
	global.key_left = false
	global.key_leftp = false
	global.key_right = false
	global.key_rightp = false
	global.key_up = false
	global.key_upp = false
	global.key_down = false
	global.key_downp = false
	global.key_jump = false
	global.key_jumpp = false
	global.key_dash = false
	global.key_dashp = false
	global.key_run = false
	global.key_runp = false
	global.key_start = false
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