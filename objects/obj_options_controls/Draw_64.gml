/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.optfont)
draw_set_valign(fa_top)
draw_text(32,32,"CONTROLS")
var controllerstring = gamepad_get_description(global.p1_controlslot)
draw_set_font(global.smalloptfont)
draw_text_yxa(32,64,"USING CONTROLLER "+string(global.p1_controlslot)+" ("+controllerstring+")","white",false,608)
draw_text(32,96 ,"LEFT  "+keytostringtwo(global.p1_leftkey))
draw_text(32,112,"RIGHT "+keytostringtwo(global.p1_rightkey))
draw_text(32,128,"UP    "+keytostringtwo(global.p1_upkey))
draw_text(32,144,"DOWN  "+keytostringtwo(global.p1_downkey))
draw_text(32,160,"JUMP  "+keytostringtwo(global.p1_jumpkey))
draw_text(32,176,"DASH  "+keytostringtwo(global.p1_dashkey))
draw_text(32,192,"RUN   "+keytostringtwo(global.p1_runkey))
draw_text(32,208,"MENU  "+keytostringtwo(global.p1_startkey))
draw_set_font(global.optfont)
draw_text(32,288,global.autorun ? "AUTORUN ON" : "AUTORUN OFF")
draw_text(32,320,global.menubuttontype ? "MENU IS EXIT" : "MENU IS ACCEPT")
draw_text(32,352,"CONTROLLER SLOT  "+string(global.p1_controlslot))
draw_text(32,384,"RESET 2 DEFAULT")
draw_text(32,416,"SAVE N QUIT")
if !waitingforinput
{
	switch chos
	{
		case 1:
		draw_sprite(spr_cursor_options,0,0,80)
		break;
		case 2:
		draw_sprite(spr_cursor_options,0,0,96)
		break;
		case 3:
		draw_sprite(spr_cursor_options,0,0,112)
		break;
		case 4:
		draw_sprite(spr_cursor_options,0,0,128)
		break;
		case 5:
		draw_sprite(spr_cursor_options,0,0,144)
		break;
		case 6:
		draw_sprite(spr_cursor_options,0,0,160)
		break;
		case 7:
		draw_sprite(spr_cursor_options,0,0,176)
		break;
		case 8:
		draw_sprite(spr_cursor_options,0,0,192)
		break;
		case 9: //big options
		draw_sprite(spr_cursor_options,0,0,288)
		break;
		case 10:
		draw_sprite(spr_cursor_options,0,0,320)
		break;
		case 11:
		draw_sprite(spr_cursor_options,0,0,352)
		break;
		case 12:
		draw_sprite(spr_cursor_options,0,0,384)
		break;
		case 13:
		draw_sprite(spr_cursor_options,0,0,416)
		break;
	}
}