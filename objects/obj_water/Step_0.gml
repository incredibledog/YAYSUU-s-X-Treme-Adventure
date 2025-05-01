/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y + 4)
{
	if (image_alpha > 0.6)
		image_alpha -= fadespeed
}
else
{
	if (image_alpha < 0.9)
		image_alpha += fadespeed
}
image_alpha = clamp(image_alpha, 0.6, 0.9)