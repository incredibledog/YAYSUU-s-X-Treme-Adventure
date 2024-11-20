/// @description Insert description here
// You can write your code in this editor
if sprite_index=spr_electrobot_jump
{
	image_index=6
}
if sprite_index=spr_electrobot_shoot
{
	boolettimes++
	if boolettimes<4
	{
		instance_create_depth(x,y,depth+1,obj_electrobot_boolet)
	}
}