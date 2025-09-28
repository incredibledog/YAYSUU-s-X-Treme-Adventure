/// @description Insert description here
// You can write your code in this editor
event_inherited()
slowdown = 1
hitboxcolor = c_blue
yearnedx = 1337
yearnedhsp = 0

if (global.char == "Y")
{
	sper_jump = spr_teddy_jump
	sper_fall = spr_teddy_fall
	sper_idle = spr_teddy_idle
	sper_walk = spr_teddy_walk
	sper_run = spr_teddy_run
}
else
{
	sper_jump = spr_yaysuu_jump
	sper_fall = spr_yaysuu_fall
	sper_idle = spr_yaysuu_idle
	sper_walk = spr_yaysuu_walk
	sper_run = spr_yaysuu_run
}