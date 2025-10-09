/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_valign(fa_top)
draw_set_font(global.font)
if !global.inboss
{
	if display>=1
	{
		if global.speedrun=true
		{
			draw_sprite(spr_stopwatch,0,64,288)
			draw_text(96,288,obj_hud.timerstring)
			draw_sprite(spr_bonus,0,352,288)
			draw_text(416,288,obj_hud.timebonus)
		}
		else
		{
			draw_sprite(spr_stopwatch,0,96,288)
			draw_text(128,288,obj_hud.timerstring)
			draw_sprite(spr_bonus,0,320,288)
			draw_text(384,288,obj_hud.timebonus)
		}
	}
	if display>=2
	{
		draw_sprite(spr_yaysuucoinicon,0,96,320)
		draw_text(128,320,global.coins)
		draw_sprite(spr_bonus,0,320,320)
		draw_text(384,320,(global.coins * 10))
	}
	if display>=3
	{
		draw_sprite(spr_scoreicon,0,96,384)
		draw_sprite(spr_total,0,128,384)
		draw_text(192,384,round(yearnedscore))
	}
	if display>=4
	{
		draw_sprite(spr_ranktext,0,544,256)
		draw_sprite(spr_rank,rank,544,288)
	}
}
if display>=5
{
	if global.inputtype == 2
	{
		draw_sprite(spr_next,1,416,416)
		if global.trial
		{
			draw_sprite(spr_retry,1,512,416)
		}
	}
	else if global.inputtype == 1 || global.inputtype == 0
	{
		draw_sprite(spr_next,0,416,416)
		if global.trial
		{
			draw_sprite(spr_retry,0,512,416)
		}
	}
	else if global.inputtype == 3
	{
		draw_sprite(spr_next,2,224,416)
		if global.trial
		{
			draw_sprite(spr_retry,2,320,416)
		}
	}
}