/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(global.font)
draw_text(32,32,"CHEATS")
if global.mobile
{
	draw_text_yxa(x,y,string("Type in a cheat code. \n")+keyboard_string+string("\nPress Go to confirm"),"white",true,640)
}
else {
	draw_text_yxa(x,y,string("Type in a cheat code. \n") + keyboard_string + string("\nPress enter to confirm \nPress escape or `d  to leave \n") + rewardstring,"white",true,640,spr_xboxbuttons,5)
}
