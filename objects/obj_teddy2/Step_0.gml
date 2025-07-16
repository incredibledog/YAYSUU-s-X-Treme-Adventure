/// @description Insert description here
// You can write your code in this editor
movingobject_start()

yearnedx = obj_player.x - obj_player.facingdirection * 96
if (x > yearnedx + 128)
	yearnedhsp = -10
else if (x < yearnedx - 128)
	yearnedhsp = 10
else if (x > yearnedx + 16)
	yearnedhsp = -7
else if (x < yearnedx - 16)
	yearnedhsp = 7
else
	yearnedhsp = 0
	
if (yearnedhsp != 0)
{
	hsp = yearnedhsp
	image_xscale = sign(yearnedhsp)
}
var sper = sprite_index

if (grounded && y > obj_player.y + 32)
	vsp = -7
else if (y > obj_player.y && vsp > 0 && obj_player.grounded)
	vsp = -7
	
if (!grounded)
{
	if (vsp < 0)
		sper = sper_jump
	else
		sper = sper_fall
}
else
{
	if (abs(hsp) < 0.5)
		sper = sper_idle
	else if (abs(hsp) > 7)
		sper = sper_run
	else
		sper = sper_walk
}
if (sprite_index != sper)
{
	sprite_index = sper
	image_index = 0
}

movingobject_end()