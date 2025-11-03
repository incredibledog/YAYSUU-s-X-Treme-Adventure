/// @description Insert description here
// You can write your code in this editor
if global.multiplayer
{
	draw_sprite_ext(spr_cursor_p1,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	draw_sprite_ext(spr_cursor_p2,image_index,p2x,y,image_xscale,image_yscale,0,c_white,image_alpha)
}
else {
	draw_self()
}