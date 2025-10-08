/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.optfont)
draw_set_valign(fa_top)
draw_text(32,32,"P"+string(player)+" CONTROLS")
if player=1
{
	var controllerstring = gamepad_get_description(global.p1_controlslot)
	draw_set_font(global.smalloptfont)
	draw_text_yxa(32,64,"USING CONTROLLER "+string(global.p1_controlslot)+" ("+controllerstring+")","white",false,608)
	draw_text(32,96 ,"LEFT  "+keytostring(global.p1_leftkey))
	draw_text(32,112,"RIGHT "+keytostring(global.p1_rightkey))
	draw_text(32,128,"UP    "+keytostring(global.p1_upkey))
	draw_text(32,144,"DOWN  "+keytostring(global.p1_downkey))
	draw_text(32,160,"JUMP  "+keytostring(global.p1_jumpkey))
	draw_text(32,176,"DASH  "+keytostring(global.p1_dashkey))
	draw_text(32,192,"RUN   "+keytostring(global.p1_runkey))
	draw_text(32,208,"MENU  "+keytostring(global.p1_startkey))
}
if player=2
{
	var controllerstring = gamepad_get_description(global.p2_controlslot)
	draw_set_font(global.smalloptfont)
	draw_text_yxa(32,64,"USING CONTROLLER "+string(global.p2_controlslot)+" ("+controllerstring+")","white",false,608)
	draw_text(32,96 ,"LEFT  "+keytostring(global.p2_leftkey))
	draw_text(32,112,"RIGHT "+keytostring(global.p2_rightkey))
	draw_text(32,128,"UP    "+keytostring(global.p2_upkey))
	draw_text(32,144,"DOWN  "+keytostring(global.p2_downkey))
	draw_text(32,160,"JUMP  "+keytostring(global.p2_jumpkey))
	draw_text(32,176,"DASH  "+keytostring(global.p2_dashkey))
	draw_text(32,192,"RUN   "+keytostring(global.p2_runkey))
	draw_text(32,208,"MENU  "+keytostring(global.p2_startkey))
}
draw_set_font(global.optfont)
if os_type=os_android && !gamepad_is_connected(0)
	draw_text(32,224,"PAD OPACITY  "+string_format(global.controlalpha,1,2))
else
	draw_text(32,224,"DEADZONE  "+string_format(global.sensitivity,1,2))
draw_text(32,256,global.vibration ? "VIBRATION  ON" : "VIBRATION  OFF")
draw_text(32,288,"CURRENT PLAYER  "+string(player))
if player=1
{
	draw_text(32,320,global.p1_autorun ? "AUTORUN  ON" : "AUTORUN  OFF")
}
if player=2
{
	draw_text(32,320,global.p2_autorun ? "AUTORUN  ON" : "AUTORUN  OFF")
}
draw_text(32,352,global.menubuttontype ? "MENU FUNC  EXIT" : "MENU FUNC  START")
if player=1
{
	draw_text(32,384,"CONTROLLER SLOT  "+string(global.p1_controlslot))
}
if player=2
{
	draw_text(32,384,"CONTROLLER SLOT  "+string(global.p2_controlslot))
}
draw_text(32,416,"RESET CHANGES")
draw_text(32,448,"SAVE N QUIT")
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
		case 9: // AND THIS... IS TO GO EVEN FURTHER BEYOND
		draw_sprite(spr_cursor_options,0,0,224)
		draw_sprite(spr_cursor_options,1,320,224)
		draw_sprite(spr_cursor_options,0,480,224)
		break;
		case 10:
		draw_sprite(spr_cursor_options,0,0,256)
		break;
		case 11: //bigger options
		draw_sprite(spr_cursor_options,0,0,288)
		break;
		case 12: //big options
		draw_sprite(spr_cursor_options,0,0,320)
		break;
		case 13:
		draw_sprite(spr_cursor_options,0,0,352)
		break;
		case 14:
		draw_sprite(spr_cursor_options,0,0,384)
		break;
		case 15:
		draw_sprite(spr_cursor_options,0,0,416)
		break;
		case 16:
		draw_sprite(spr_cursor_options,0,0,448)
		break;
	}
}