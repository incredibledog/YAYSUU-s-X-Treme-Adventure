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
	draw_sprite(sprite_index, image_index, drawx, drawy)
}