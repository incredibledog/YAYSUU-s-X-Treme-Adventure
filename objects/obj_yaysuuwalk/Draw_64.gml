/// @description Insert description here
// You can write your code in this editor
draw_self()
if global.multiplayer
{
	if global.p2char="Y"
		draw_sprite_ext(spr_yaysuu_walk,image_index,x-64,y,1,1,0,c_white,1)
	else if global.p2char="T"
		draw_sprite_ext(spr_teddy_walk,image_index,x-64,y,1,1,0,c_white,1)
}