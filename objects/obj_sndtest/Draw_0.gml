/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(32,32,"SOUND TEST")
draw_set_font(global.subtitlefont)
if global.inputtype=0
{
	draw_text_yxa(x,y,string(obj_sndtest.sndname) + string("\nPress left or right to cycle \n"+keytostring(global.p1_jumpkey)+" to play \n"+keytostring(global.p1_dashkey)+" to stop \n"+keytostring(global.p1_runkey)+" to leave"),"white",true,500)
}
if global.inputtype=2
{
	draw_text_yxa(x,y,string(obj_sndtest.sndname) + string("\nPress left or right to cycle"),"white",true,500)
	draw_text_yxa(x,y+16*2,"`d  to play","white",true,,spr_xboxbuttons,4)
	draw_text_yxa(x,y+16*3,"`d  to stop","white",true,,spr_xboxbuttons,5)
	draw_text_yxa(x,y+16*4,"`d  to leave","white",true,,spr_xboxbuttons,6)
}
if global.inputtype=3
{
	draw_text_yxa(x,y,string(obj_sndtest.sndname),"white",true,500)
}
draw_sprite_ext(spr_ostrecord,0,512,352,1,1,angle,c_white,1)