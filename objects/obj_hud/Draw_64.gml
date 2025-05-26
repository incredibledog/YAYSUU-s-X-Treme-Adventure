/// @description Call HUD script
if global.inlevel && !global.inhub
{
	if (!instance_exists(obj_stageclear))
	{
		draw_set_font(global.font)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		var healthheight = 128
		if (room=room_chillfields_boss)
		{
			boss_health_hearts(spr_fringleglasses)
			healthheight = 96
		}
		else
		{
			draw_sprite(spr_scoreicon,0,32,32)
			draw_text(64,32,global.score+global.scoreadd)
			draw_sprite(spr_stopwatch,0,32,64)
			draw_text(64, 64, timerstring)
			if room=room_glowstickcity
				draw_sprite(spr_uncannycoin,0,32,96)
			else if (global.char == "C")
				draw_sprite(spr_balloonicon,0,32,96)
			else
				draw_sprite(spr_yaysuucoinicon,0,32,96)
			draw_text(64,96,global.coins)
		}
		if (global.char == "C")
			health_system_hearts(spr_carrot, global.hp, global.maxhp, 32, healthheight)
		else
			health_system_hearts(spr_pizza, global.hp, global.maxhp, 32, healthheight)
		if (comboshowtimer > 0)
		{
			draw_set_halign(fa_right)
			if (global.combo > 1)
				draw_text_color(608, 32, string(showncombo) + " COMBO!", c_yellow, c_yellow, c_yellow, c_yellow, 1)
			else if (comboshowtimer > 60)
				draw_text_color(608, 32, string(showncombo) + " COMBO!", c_red, c_red, c_red, c_red, 1)
			else
				draw_text_color(608, 32, string(showncombo) + " COMBO!", c_red, c_red, c_red, c_red, comboshowtimer / 60)
			draw_set_halign(fa_left)
		}
		
		if (!global.showcollision)
		{
			draw_set_font(global.font)
			if (os_type != os_android)
			{
				if global.char="Y"
					draw_sprite(spr_yaysuulifeicon,0,32,416)
				else if global.char="T"
					draw_sprite(spr_teddylifeicon,0,32,416)
				else if global.char="C"
					draw_sprite(spr_cottonlifeicon,0,32,416)
				draw_text(64,416,global.lives)
			}
			else
			{
				if global.char="Y"
					draw_sprite(spr_yaysuulifeicon,0,480,32)
				else if global.char="T"
					draw_sprite(spr_teddylifeicon,0,480,32)
				else if global.char="C"
					draw_sprite(spr_cottonlifeicon,0,480,32)
				draw_text(64,416,global.lives)
			}
		}
	}
}
