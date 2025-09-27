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
if global.char="Y"
{
	sprite_index=spr_yaysuu_idle
}
if global.char="T"
{
	sprite_index=spr_teddy_idle
}