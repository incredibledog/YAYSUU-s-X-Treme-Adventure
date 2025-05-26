/// @description Insert description here
// You can write your code in this editor
if (shownote)
{
	draw_set_font(global.smalloptfont)
	draw_set_valign(fa_top)
	draw_set_halign(fa_center)
	draw_text_ext(x+16, y+32, text, 16, 480)
	draw_set_halign(fa_left)
}