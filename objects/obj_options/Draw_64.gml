/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.optfont)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text(32,32,"OPTIONS")
draw_text(32,96,"AUDIO OPTIONS")
draw_set_font(global.optfont)
draw_text(32,128,"REBIND CONTROLS")
if global.mobile
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
	draw_text(32,288,"PRECISE TIMER  ON")
else
	draw_text(32,288,"PRECISE TIMER  OFF")
draw_text(32,320,"RESET RECORDS")
draw_text(32,352,"RESET 2 DEFAULT")
draw_text(32,384,"CONTROL TEST")
draw_text(32,416,"SAVE N QUIT")
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