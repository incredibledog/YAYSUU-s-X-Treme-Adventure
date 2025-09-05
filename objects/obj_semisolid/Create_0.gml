/// @description Insert description here
// You can write your code in this editor
intendedy = y
enemycollision = instance_create_depth(x, y, depth, obj_othercollision)
with (enemycollision)
{
	image_xscale = other.image_xscale
	image_yscale = 1 / 32
}