/// @description Insert description here
// You can write your code in this editor
global.scoreadd+=100
global.combo++
if (small)
{
	obj_camera.vshakeoffset=5
	instance_create_depth(x,y,depth,obj_explode_jr)
}
else
{
	obj_camera.vshakeoffset=15
	instance_create_depth(x,y,depth,obj_explode)
}