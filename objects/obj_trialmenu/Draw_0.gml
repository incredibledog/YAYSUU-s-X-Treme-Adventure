/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.subtitlefont)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
if !bosslvl
{
	draw_text_yxa(64,64,"Choose a Stage! \n" + lvlname + (global.inputtype=3 ? "" : "\nLeft/Right: Cycle"),"white",true)
	draw_text_yxa(64,112,"`d  "+string(hiscore),"white",true,,spr_savescoreicon,0)
	draw_text_yxa(64,128,"`d  "+string(timestring),"white",true,,spr_savetimeicon,0)
	draw_sprite(spr_rank,rank,544,192)
}
else
{
	draw_text_yxa(64,64,"Choose a Stage! \n" + lvlname + (global.inputtype=3 ? "" : "\nLeft/Right: Cycle"),"white",true)
}
if global.inputtype=3
{
	draw_sprite(spr_left,0,96,192)
	draw_sprite(spr_delete,0,224,192)
	draw_sprite(spr_resume,0,288,192)
	draw_sprite(spr_quit,0,352,192)
	draw_sprite(spr_right,0,480,192)
}
draw_sprite_tiled(sprname,0,0-xoffset,0)