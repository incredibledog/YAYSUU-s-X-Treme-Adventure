/// @description Insert description here
// You can write your code in this editor
global.hp=3
talking=false
image_angle = 0
if global.trial || global.levelloadtype=loadtype.respawn // skip the walk
{
	x=160
}
else {
	x=-64
}
sprite_index=global.char="Y" ? spr_yaysuu_idle : spr_teddy_idle