/// @description Insert description here
// You can write your code in this editor
// PLACEHOLDER SAVE DATA SCREEN!!! DON'T TOUCH!!! well.. if you're even ALIVE...
if !global.trial
{
	draw_sprite(spr_savebar,0,0,0)
	draw_set_font(global.subtitlefont)
	draw_text_yxa(16,80,"PROGRESS: 0% \n  3   0\nLast Save 8/2/2024\nChill Fields Stage 1","white",true,6400)
	draw_sprite(spr_savelifeicon,charlife,16,30)
	draw_sprite(spr_savescoreicon,0,80,30)
}
draw_set_font(global.font)
draw_text(224,448,charname)