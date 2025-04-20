if (!global.inlevel)
	return
draw_set_valign(fa_bottom)
draw_set_font(global.optfont)
draw_text_transformed(0, 480, "STATE " + string(state), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - 16, "VSP " + string(vsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - 32, "HSP " + string(hsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - 48, "YEARNEDHSP " + string(yearnedhsp), 0.5, 0.5, 0)
draw_set_valign(fa_top)