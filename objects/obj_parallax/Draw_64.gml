/// @description Insert description here
// You can write your code in this editor
if (global.showcollision)
{
	draw_set_font(global.smalloptfont)
	draw_set_halign(fa_right)
	draw_set_valign(fa_top)
	draw_text(640,64,string(x))
	draw_text(640,80,string(y))
	draw_text(640,96,string(obj_player.x))
	draw_text(640,112,string(obj_player.y))
	draw_set_halign(fa_left)
}