/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.subtitlefont)
draw_set_valign(fa_top)
if select!=3
{
	draw_text_yxa(64,64,"Choose a Stage! \n"+string(lvlname)+"\nLeft and right to cycle \nHigh Score: "+string(hiscore)+"\nBest Time: "+string(timer),"white",true)
}
else
{
	draw_text_yxa(64,64,"Choose a Stage! \n"+string(lvlname)+"\nLeft and right to cycle","white",true)
}
draw_sprite_tiled(sprname,0,0-xoffset,0)