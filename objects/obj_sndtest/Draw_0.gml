/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(32,32,"SOUND TEST")
draw_set_font(global.subtitlefont)
if global.inputtype=0
{
	draw_text_yxa(32, 64, string(obj_sndtest.sndname),"white",true,500)
	draw_text_yxa(32, room_height-80, string("Left/Right: Change Song"),"white",true,500)
	draw_text_yxa(32, room_height-64, string(keytostring(global.p1_jumpkey)+": Play"),"white",true,500)
	draw_text_yxa(32, room_height-48, string(keytostring(global.p1_dashkey)+": Stop"),"white",true,500)
	draw_text_yxa(32, room_height-32, string(keytostring(global.p1_runkey)+": Leave"),"white",true,500)
}
if global.inputtype=2
{
	draw_text_yxa(32, 64, string(obj_sndtest.sndname),"white",true,500)
	draw_text_yxa(32, room_height-80, string("Left/Right: Change Song"),"white",true,500)
	draw_text_yxa(32, room_height-64,"`d : Play","white",true,,spr_xboxbuttons,4)
	draw_text_yxa(32, room_height-48,"`d : Stop","white",true,,spr_xboxbuttons,5)
	draw_text_yxa(32, room_height-32,"`d : Leave","white",true,,spr_xboxbuttons,6)
}
if global.inputtype=3
{
	draw_text_yxa(32, 64, string(obj_sndtest.sndname),"white",true,500)
}
draw_sprite_ext(spr_ostrecord,0,512,352,1,1,angle,c_white,1)