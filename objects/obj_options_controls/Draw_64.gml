/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.optfont)
draw_set_valign(fa_top)
draw_text(32,32,"CONTROLS")
var controllerstring = gamepad_get_description(global.p1_controlslot)
draw_set_font(global.smalloptfont)
draw_text_yxa(32,64,"USING CONTROLLER "+string(global.p1_controlslot)+" ("+controllerstring+")","white",false,608)
draw_set_font(global.optfont)
draw_text(32,96,"LEFT  "+keytostring(global.p1_leftkey))
draw_text(32,128,"RIGHT  "+keytostring(global.p1_rightkey))
draw_text(32,160,"UP  "+keytostring(global.p1_upkey))
draw_text(32,192,"DOWN  "+keytostring(global.p1_downkey))
draw_text(32,224,"JUMP  "+keytostring(global.p1_jumpkey))
draw_text(32,256,"DASH  "+keytostring(global.p1_dashkey))
draw_text(32,288,"RUN  "+keytostring(global.p1_runkey))
draw_text(32,320,"START  "+keytostring(global.p1_startkey))
draw_text(32,352,"CONTROLLER SLOT  "+string(global.p1_controlslot))
draw_text(32,384,"RESET 2 DEFAULT")
draw_text(32,416,"SAVE N QUIT")
if !waitingforinput
{
	switch chos
	{
		case 1:
		draw_sprite(spr_cursor_options,0,0,96)
		break;
		case 2:
		draw_sprite(spr_cursor_options,0,0,128)
		break;
		case 3:
		draw_sprite(spr_cursor_options,0,0,160)
		break;
		case 4:
		draw_sprite(spr_cursor_options,0,0,192)
		break;
		case 5:
		draw_sprite(spr_cursor_options,0,0,224)
		break;
		case 6:
		draw_sprite(spr_cursor_options,0,0,256)
		break;
		case 7:
		draw_sprite(spr_cursor_options,0,0,288)
		break;
		case 8:
		draw_sprite(spr_cursor_options,0,0,320)
		break;
		case 9:
		draw_sprite(spr_cursor_options,0,0,352)
		break;
		case 10:
		draw_sprite(spr_cursor_options,0,0,384)
		break;
		case 11:
		draw_sprite(spr_cursor_options,0,0,416)
		break;
	}
}