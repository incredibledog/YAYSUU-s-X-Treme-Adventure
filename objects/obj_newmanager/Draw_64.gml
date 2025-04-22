if global.jumpscare=true
	draw_sprite(spr_uncanny_jumpscare,0,0,0)

if (global.inlevel)
{
	draw_set_font(global.subtitlefont)
	draw_set_halign(fa_right)
	draw_text(640, 0, "temp hud :3")
	draw_set_halign(fa_left)
	draw_set_font(global.font)
	draw_text(0, 0, "SCORE: " + string(global.score + global.scoreadd))
	draw_text(0, 32, "COINS: " + string(global.coins))
	draw_text(0, 64, "HEALTH:" + string(global.hp))
	if (comboshowtimer > 0)
	{
		if (global.combo > 1)
			draw_text_color(0, 96, "COMBO: " + string(showncombo), c_lime, c_lime, c_lime, c_lime, 1)
		else if (comboshowtimer > 60)
			draw_text_color(0, 96, "COMBO: " + string(showncombo), c_red, c_red, c_red, c_red, 1)
		else
			draw_text_color(0, 96, "COMBO: " + string(showncombo), c_red, c_red, c_red, c_red, comboshowtimer / 60)
	}
}

if window_get_fullscreen() && global.borders=true
{
	switch room
	{
		case room_chillfields_1:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2b:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2c:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2d:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_boss:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_mysticmanor_1:
		draw_sprite(spr_mysticmanor_border,0,0,0)
		break;
		case room_tutorial:
		draw_sprite(spr_tutorial_border,0,0,0)
		break;
		case room_gameover:
		break;
		default:
		draw_sprite(spr_default_border,0,0,0)
		break;
	}
}