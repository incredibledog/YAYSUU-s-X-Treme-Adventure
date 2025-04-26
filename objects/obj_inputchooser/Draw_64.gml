draw_set_valign(fa_top)
if global.keytype == 0
{
	draw_set_font(global.optfont)
	draw_text(0,0,"CLASSIC")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"movement: arrow keys\njump: Z\ndash: X\nrun: C\nmenu: P")
}
else if global.keytype == 1
{
	draw_set_font(global.optfont)
	draw_text(0,0,"MODERN")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"movement: WASD\njump: space\ndash: E\nrun: shift\nmenu: esc")
}
//else if global.inputtype == 2
//{
//	draw_set_font(global.optfont)
//	draw_text(0,0,"CONTROLLER")
//	draw_set_font(global.subtitlefont)
//	draw_text(0,32,"too lazy to describe :3")
//}
else
{
	draw_set_font(global.optfont)
	draw_text(0,0,"CHOOSE")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"choose keyboard input")
}

//draw_text(0,128,string(global.keytype))
//draw_text(64,128,string(global.inputtype))
//draw_text(128,128,string(global.key_jumpp))

draw_set_valign(fa_bottom)
draw_text(0,480,"press the jump button to continue")
draw_set_valign(fa_top)