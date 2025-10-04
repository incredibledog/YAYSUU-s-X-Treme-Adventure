if (!global.inlevel || !global.showcollision || isotherplayer)
	return

draw_set_valign(fa_bottom)
draw_set_font(global.smalloptfont)
var actualstatename = "i dunno"
switch (state)
{
	case playerstates.normal:
		actualstatename = "normal"
		break;
	case playerstates.crouch:
		actualstatename = "crouch"
		break;
	case playerstates.dash:
		actualstatename = "dash"
		break;
	case playerstates.stomp:
		actualstatename = "stomp"
		break;
	case playerstates.hurt:
		actualstatename = "hurt"
		break;
	case playerstates.inactive:
		actualstatename = "inactive"
		break;
	case playerstates.dead:
		actualstatename = "dead"
		break;
	case playerstates.slide:
		actualstatename = "slide"
		break;
	case playerstates.bounce:
		actualstatename = "bounce"
		break;
	case playerstates.win:
		actualstatename = "win"
		break;
	case playerstates.golfstop:
		actualstatename = "golfstop"
		break;
	case playerstates.launched:
		actualstatename = "launched"
		break;
	case playerstates.hangglide:
		actualstatename = "hang glider"
		break;
	case playerstates.debug:
		actualstatename = "debug"
		break;
}
draw_text(0, 480 - (16 * 1), "state:" + actualstatename + "(" + string(state) + ")")
draw_text(0, 480 - (16 * 2), "vsp:" + string(vsp))
draw_text(0, 480 - (16 * 3), "hsp:" + string(hsp))
draw_text(0, 480 - (16 * 4), "yearnedhsp:" + string(yearnedhsp))
draw_text(0, 480 - (16 * 7), "combo:" + string(global.combo))
if (grounded)
	actualstatename = "GR✓"
else
	actualstatename = "GR✗"
if (prevgrounded)
	actualstatename = actualstatename + " PG✓"
else
	actualstatename = actualstatename + " PG✗"
if (slopey)
	actualstatename = actualstatename + " SL✓"
else
	actualstatename = actualstatename + " SL✗"
if (prevslopey)
	actualstatename = actualstatename + " PS✓"
else
	actualstatename = actualstatename + " PS✗"
draw_text(0, 480 - (16 * 5), actualstatename) //recycling :3
draw_text(0, 480 - (16 * 6), whichcollisionsdid)
draw_set_valign(fa_top)