/// @description Insert description here
// You can write your code in this editor
if (sign(image_xscale) == 1)
{
	if (obj_player.bbox_bottom - 1 > intendedy + 32 && obj_player.bbox_right - 1 > x)
		y = -2763
	else
		y = intendedy
}
else
{
	if (obj_player.bbox_bottom - 1 > intendedy + 32 && obj_player.bbox_left < x + 32)
		y = -2763
	else
		y = intendedy
}