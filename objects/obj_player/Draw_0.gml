if (global.inlevel)
{
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
	draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}