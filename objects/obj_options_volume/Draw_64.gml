/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.optfont)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text(32,32,"AUDIO OPTIONS")
draw_text(32,96,"ALL VOLUME  "+string_format(round(volume / 0.05) * 0.05,1,2))
draw_text(32,128,"MUS VOLUME  "+string_format(round(global.musvol / 0.05) * 0.05,1,2))
draw_text(32,160,"SND VOLUME  "+string_format(round(global.sndvol / 0.05) * 0.05,1,2))
draw_text(32,192,"VOICELINES  "+(global.voicelines ? "ON" : "OFF"))
draw_text(32,384,"RESET 2 DEFAULT")
draw_text(32,416,"SAVE N QUIT")
switch chos
{
	case 1:
	draw_sprite(spr_cursor_options,0,0,96)
	draw_sprite(spr_cursor_options,1,384,96)
	draw_sprite(spr_cursor_options,0,544,96)
	break;
	case 2:
	draw_sprite(spr_cursor_options,0,0,128)
	draw_sprite(spr_cursor_options,1,384,128)
	draw_sprite(spr_cursor_options,0,544,128)
	break;
	case 3:
	draw_sprite(spr_cursor_options,0,0,160)
	draw_sprite(spr_cursor_options,1,384,160)
	draw_sprite(spr_cursor_options,0,544,160)
	break;
	case 4:
	draw_sprite(spr_cursor_options,0,0,192)
	break;
	case 5:
	draw_sprite(spr_cursor_options,0,0,384)
	break;
	case 6:
	draw_sprite(spr_cursor_options,0,0,416)
	break;
}