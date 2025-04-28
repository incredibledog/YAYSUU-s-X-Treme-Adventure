if (!global.inlevel || !global.showcollision)
	return

draw_set_valign(fa_bottom)
draw_set_font(global.optfont)
draw_text_transformed(0, 480 - (16 * 1), "STATE " + string(state), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 2), "VSP " + string(vsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 3), "HSP " + string(hsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 4), "YEARNEDHSP " + string(yearnedhsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 5), string_upper(global.debugmessage), 0.5, 0.5, 0)
if (grounded)
	draw_text_transformed(0, 480 - (16 * 6), "GROUNDED", 0.5, 0.5, 0)
else
	draw_text_transformed(0, 480 - (16 * 6), "UNGROUNDED", 0.5, 0.5, 0)
draw_set_valign(fa_top)