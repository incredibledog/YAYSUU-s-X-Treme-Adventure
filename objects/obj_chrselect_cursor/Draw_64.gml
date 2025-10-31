/// @description Insert description here
// You can write your code in this editor
// PLACEHOLDER SAVE DATA SCREEN!!! DON'T TOUCH!!! well.. if you're even ALIVE...
if !global.trial
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_sprite(spr_savebar,0,0,0)
	draw_set_font(global.subtitlefont)
	draw_text_yxa(16,16,"`d  "+string(gameprogress)+"%","white",false,6400,spr_savescoreicon)
	draw_text_yxa(16,32,"`d  0","white",false,6400,spr_savelifeicon,charlife)
	draw_text_yxa(16,48,"`d  0/0/0","white",false,6400,spr_savetimeicon)
	draw_text_yxa(16,64,string(lvlname),"white",false,6400)
}
draw_set_font(global.subtitlefont)