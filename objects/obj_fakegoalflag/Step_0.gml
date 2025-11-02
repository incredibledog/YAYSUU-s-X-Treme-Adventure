/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && !touched
{
	instance_destroy()
	instance_create_depth(x,y,depth,obj_explode)
}