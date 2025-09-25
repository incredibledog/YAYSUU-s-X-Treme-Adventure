/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.optfont)
draw_set_valign(fa_top)
draw_text(32,32,"OPTIONS")
draw_text(32,96,"VOLUME  "+string_format(round(volume / 0.05) * 0.05,1,2))
if (chos == 1)
{
	var roundedvolume = round(volume / 0.05) * 0.05
	var volumestring = ""
	if (roundedvolume == 0 || roundedvolume == 2)
		volumestring = "i am deaf incarnate!"
	else if (roundedvolume < 0.4)
		volumestring = "i'm too sensitive for sound"
	else if (roundedvolume < 0.8)
		volumestring = "hey, not too loud"
	else if (roundedvolume < 1.2)
		volumestring = "hear me plenty"
	else if (roundedvolume < 1.6)
		volumestring = "ultra-volume"
	else
		volumestring = "my ear!"
	draw_set_font(global.smalloptfont)
	draw_text(32,80,volumestring)
}
draw_set_font(global.optfont)
if os_type=os_android && !gamepad_is_connected(0)
	draw_text(32,128,"PAD OPACITY  "+string_format(global.controlalpha,1,2))
else
	draw_text(32,128,"SENSITIVITY  "+string_format(global.sensitivity,1,2))
if os_type=os_android
	draw_set_alpha(0.5)
if window_get_fullscreen() {
	draw_text(32,160,"FULLSCREEN  ON")
	draw_text(32,192,"WINDOW SCALE  FULL")
}
else {
	draw_text(32,160,"FULLSCREEN  OFF")
	draw_text(32,192,"WINDOW SCALE  "+string(global.screenscale)+"X")
}
draw_set_alpha(1)
if global.screenshake=true
	draw_text(32,224,"SCREENSHAKE  ON")
else
	draw_text(32,224,"SCREENSHAKE  OFF")
if global.borders=true
	draw_text(32,256,"BORDERS  ON")
else
	draw_text(32,256,"BORDERS  OFF")
if global.speedrun=true
	draw_text(32,288,"SPEEDRUN TIMER  ON")
else
	draw_text(32,288,"SPEEDRUN TIMER  OFF")
draw_text(32,320,"RESET RECORDS")
draw_text(32,352,"RESET 2 DEFAULT")
draw_text(32,384,"REBIND CONTROLS")
draw_text(32,416,"SAVE N QUIT")
switch chos
{
	case 1:
	draw_sprite(spr_cursor_options,0,0,96)
	draw_sprite(spr_cursor_options,1,256,96)
	draw_sprite(spr_cursor_options,0,416,96)
	break;
	case 2:
	draw_sprite(spr_cursor_options,0,0,128)
	draw_sprite(spr_cursor_options,1,416,128)
	draw_sprite(spr_cursor_options,0,576,128)
	break;
	case 3:
	draw_sprite(spr_cursor_options,0,0,160)
	break;
	case 4:
	draw_sprite(spr_cursor_options,0,0,192)
	if !window_get_fullscreen()
	{
		draw_sprite(spr_cursor_options,1,448,192)
		draw_sprite(spr_cursor_options,0,544,192)
	}
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