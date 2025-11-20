/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text(32,32,"EXTRAS")
draw_text(32,96,"CREDITS")
draw_text(32,128,"SOUNDTEST")
draw_text(32,160,"CHEATS")
if !extrasunlock
{
	draw_set_alpha(0.5)
}
draw_text(32,192,"EXTRA STAGES")
draw_set_alpha(1)
draw_text(32,224,"ACHIEVEMENTS")
if global.inputtype=3
{
	draw_set_alpha(0.5)
}
draw_text(32,256,"GALLERY")
draw_set_alpha(1)
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
	draw_sprite(spr_menucursor,0,0,384)
	break;
}