/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.optfont)
draw_text(32,32,"OPTIONS")
draw_text(32,96,"VOLUME  "+string_format(volume,1,2))
if os_type=os_android && !gamepad_is_connected(0)
{
	draw_text(32,128,"PAD OPACITY  "+string_format(global.controlalpha,1,2))
}
else {
	draw_text(32,128,"SENSITIVITY  "+string_format(global.sensitivity,1,2))
}
if os_type=os_android
{
	draw_text(32,160,"ANDROID DETECTED")
}
else {
	if window_get_fullscreen()
	{
		draw_text(32,160,"FULLSCREEN  ON")
	}
	else
	{
		draw_text(32,160,"FULLSCREEN  OFF")
	}
}
if global.screenshake=true
{
	draw_text(32,192,"SCREENSHAKE  ON")
}
else
{
	draw_text(32,192,"SCREENSHAKE  OFF")
}
if global.borders=true
{
	draw_text(32,224,"BORDERS  ON")
}
else
{
	draw_text(32,224,"BORDERS  OFF")
}
draw_text(32,256,"RESET RECORDS")
draw_text(32,288,"RESET 2 DEFAULT")
draw_text(32,320,"SAVE N QUIT")
draw_text(32,352,"QUIT")
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
}