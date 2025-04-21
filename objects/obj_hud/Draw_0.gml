/// @description Insert description here
// You can write your code in this editor


if (global.drawhud)
{
	if (room=room_chillfields_boss)
		boss_health_hearts(spr_fringleglasses);
	else
	{
		draw_set_halign(fa_left)
		draw_set_font(global.font)
		draw_sprite(spr_scoreicon,0,32,32)
		draw_text(64,32,global.score+global.scoreadd)
		draw_sprite(spr_stopwatch,0,32,64)
		var timerstring = string_replace_all(((string_format(minutes, 2, 0)) + ":" + (string_format(seconds, 2, 0))), " ", "0")
		draw_text(64, 64, timerstring)
		if room=room_glowstickcity
		{
			draw_sprite(spr_uncannycoin,0,32,96)
		}
		else {
			draw_sprite(spr_yaysuucoinicon,0,32,96)
		}
		draw_text(64,96,global.coins)
	}
	//health_system_hearts(spr_pizza);
	if !(os_type=os_android)
	{
		if global.char="Y"
		{
			draw_sprite(spr_yaysuulifeicon,0,32,416)
		}
		else if global.char="T"
		{
			draw_sprite(spr_teddylifeicon,0,32,416)
		}
		draw_set_font(global.font)
		draw_text(64,416,global.lives)
	}
	else
	{
		if global.char="Y"
		{
			draw_sprite(spr_yaysuulifeicon,0,480,32)
		}
		else if global.char="T"
		{
			draw_sprite(spr_teddylifeicon,0,480,32)
		}
		draw_set_font(global.font)
		draw_text(512,32,global.lives)
	}
}