/// @description Insert description here
// You can write your code in this editor
if (room == room_dev)
	draw_set_font(global.smalloptfont)
else
	draw_set_font(global.subtitlefont)
draw_set_valign(fa_top)
draw_text(x, y, text)