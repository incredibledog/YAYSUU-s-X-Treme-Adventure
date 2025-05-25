if (global.inlevel)
{
	scr_draw_hitbox()
	
	var drawx
	var drawy
	if (image_angle % 90 == 0)
	{
		drawx = round(x)
		drawy = round(y)
	}
	else
	{
		drawx = x
		drawy = y
	}
	var damagealpha = 1
	if (damageflash)
		damagealpha = 0.5
	
	draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha * damagealpha)
	if (runanimtimer != -1)
		draw_sprite_ext(spr_boost, runanimtimer / 60 * 16, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha * damagealpha)
	if (showarrow)
		draw_sprite(spr_uparrow, (global.globaltimer / 8) % 4, x, y - 32)
}