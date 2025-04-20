if global.inputtype == 0
{
	draw_set_font(global.optfont)
	draw_text(0,0,"CLASSIC")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"movement: arrow keys\njump: Z\ndash: X\nrun: C\nmenu: P")
}
else if global.inputtype == 1
{
	draw_set_font(global.optfont)
	draw_text(0,0,"MODERN")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"movement: WASD\njump: space\ndash: E\nrun: shift\nmenu: esc")
}
else if global.inputtype == 2
{
	draw_set_font(global.optfont)
	draw_text(0,0,"CONTROLLER")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"too lazy to describe :3")
}
else
{
	draw_set_font(global.optfont)
	draw_text(0,0,"MESSY")
	draw_set_font(global.subtitlefont)
	draw_text(0,32,"all of the inputs from the original trail")
}

draw_set_valign(fa_bottom)
draw_text(0,480,"press the jump button to continue")
draw_set_valign(fa_top)