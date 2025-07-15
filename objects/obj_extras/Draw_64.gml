/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font)
draw_set_valign(fa_top)
draw_text(32,32,"EXTRAS")
draw_text(32,96,"CREDITS")
draw_text(32,128,"SOUNDTEST")
draw_text(32,160,"MUSEUM")
draw_text(32,192,"CHEATS")
draw_text(32,224,"MORE TO BE ADDED")
draw_text(32,256,"IM OUTTA OPTIONS THIS IS PADDING")
draw_text(32,288,"HEY LOOK HERE'S THE")
draw_text(32,320,"QUIT OPTION")
draw_text(32,352,"DOWN HERE")
draw_text(32,384,"QUIT")
switch chos
{
	case 1:
	draw_sprite(spr_menucursor,0,0,96)
	break;
	case 2:
	draw_sprite(spr_menucursor,0,0,128)
	break;
	case 3:
	draw_sprite(spr_menucursor,0,0,160)
	break;
	case 4:
	draw_sprite(spr_menucursor,0,0,192)
	break;
	case 5:
	draw_sprite(spr_menucursor,0,0,224)
	break;
	case 6:
	draw_sprite(spr_menucursor,0,0,256)
	break;
	case 7:
	draw_sprite(spr_menucursor,0,0,288)
	break;
	case 8:
	draw_sprite(spr_menucursor,0,0,320)
	break;
	case 9:
	draw_sprite(spr_menucursor,0,0,352)
	break;
	case 10:
	draw_sprite(spr_menucursor,0,0,384)
	break;
}