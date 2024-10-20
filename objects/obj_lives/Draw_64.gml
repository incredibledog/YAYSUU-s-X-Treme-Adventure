/// @description Insert description here
// You can write your code in this editor
if hide=false
{
	if global.char="Y"
	{
		draw_sprite(spr_yaysuulifeicon,0,32,416)
	}
	else if global.char="T"
	{
		draw_sprite(spr_teddylifeicon,0,32,416)
	}
	draw_set_font(global.font)
	draw_text(64,416,global.lives)
}