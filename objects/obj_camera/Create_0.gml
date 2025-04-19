/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_spawn) && global.checkpoint=false
{
	x=obj_spawn.x
	y=obj_spawn.y
}
else if global.checkpoint=true && instance_exists(obj_checkpoint)
{
	x=obj_checkpoint.x
	y=obj_checkpoint.y
}
voffset=0
vshakeoffset=0
vwobble=-1