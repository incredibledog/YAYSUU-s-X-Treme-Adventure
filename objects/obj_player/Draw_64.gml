if (!global.inlevel || !global.showcollision)
	return

draw_set_valign(fa_bottom)
draw_set_font(global.optfont)
var actualstatename = "I DUNNO"
switch (state)
{
	case playerstates.normal:
		actualstatename = "NORMAL"
		break;
	case playerstates.crouch:
		actualstatename = "CROUCH"
		break;
	case playerstates.dash:
		actualstatename = "DASH"
		break;
	case playerstates.stomp:
		actualstatename = "STOMP"
		break;
	case playerstates.hurt:
		actualstatename = "HURT"
		break;
	case playerstates.inactive:
		actualstatename = "INACTIVE"
		break;
	case playerstates.dead:
		actualstatename = "DEAD"
		break;
	case playerstates.slide:
		actualstatename = "SLIDE"
		break;
	case playerstates.bounce:
		actualstatename = "BOUNCE"
		break;
	case playerstates.win:
		actualstatename = "WIN"
		break;
	case playerstates.golfstop:
		actualstatename = "GOLFSTOP"
		break;
}
draw_text_transformed(0, 480 - (16 * 1), "STATE " + actualstatename + " (" + string(state) + ")", 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 2), "VSP " + string(vsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 3), "HSP " + string(hsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 4), "YEARNEDHSP " + string(yearnedhsp), 0.5, 0.5, 0)
draw_text_transformed(0, 480 - (16 * 5), string_upper(global.debugmessage), 0.5, 0.5, 0)
if (grounded)
	draw_text_transformed(0, 480 - (16 * 6), "GROUNDED", 0.5, 0.5, 0)
else
	draw_text_transformed(0, 480 - (16 * 6), "UNGROUNDED", 0.5, 0.5, 0)
draw_set_valign(fa_top)