/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.subtitlefont)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
if !bosslvl
{
	draw_text_yxa(64,64,"Choose an EXTRA Stage! \n" + lvlname + "\nLeft and right to cycle","white",true)
	draw_text_yxa(64,112,"`d  "+string(hiscore),"white",true,,spr_savescoreicon,0)
	draw_text_yxa(64,128,"`d  "+string(timestring),"white",true,,spr_savetimeicon,0)
	draw_sprite(spr_rank,rank,544,192)
}
else
{
	draw_text_yxa(64,64,"Choose an EXTRA Stage! \n" + lvlname + "\nLeft and right to cycle","white",true)
}
draw_sprite_tiled(sprname,0,0-xoffset,0)