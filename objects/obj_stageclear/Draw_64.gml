/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_valign(fa_top)
if !global.inboss
{
	if display>=1
	{
		draw_sprite(spr_stopwatch,0,64,288)
		draw_text(96,288,obj_hud.timerstring)
		draw_sprite(spr_bonus,0,352,288)
		draw_text(416,288,obj_hud.timebonus)
	}
	if display>=2
	{
		draw_sprite(spr_yaysuucoinicon,0,96,320)
		draw_text(128,320,global.coins)
		draw_sprite(spr_bonus,0,320,320)
		draw_text(384,320,((global.coins % 100) * 10))
	}
	if display>=3
	{
		draw_sprite(spr_scoreicon,0,96,384)
		draw_sprite(spr_total,0,128,384)
		draw_text(192,384,global.score)
	}
}
if display>=4
{
	if !gamepad_is_connected(0)
	{
		if !os_type=os_android
		{
			draw_sprite(spr_next,0,416,416)
			draw_sprite(spr_retry,0,512,416)
		}
		else
		{
			draw_sprite(spr_next,2,224,416)
			draw_sprite(spr_retry,2,320,416)
		}
	}
	else
	{
		draw_sprite(spr_next,1,416,416)
		draw_sprite(spr_retry,1,512,416)
	}
}