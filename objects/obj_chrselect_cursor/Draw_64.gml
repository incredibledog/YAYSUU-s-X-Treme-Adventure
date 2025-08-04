/// @description Insert description here
// You can write your code in this editor
// PLACEHOLDER SAVE DATA SCREEN!!! DON'T TOUCH!!! well.. if you're even ALIVE...
if !global.trial
{
	draw_sprite(spr_savebar,0,0,0)
	draw_set_font(global.subtitlefont)
	draw_text_yxa(16,80,"PROGRESS: "+string(gameprogress)+"% \n  "+string(savelives[charlife])+"   "+string(savescore[charlife])+"\nLast Save "+string(savemonth[charlife])+"/"+string(saveday[charlife])+"/"+string_replace_all(string_format(saveyear[charlife],4,0)," ","0")+"\n"+string(lvlname),"white",true,6400)
	draw_sprite(spr_savelifeicon,charlife,16,30)
	draw_sprite(spr_savescoreicon,0,80,30)
}
draw_set_font(global.font)
draw_text(224,448,charname)