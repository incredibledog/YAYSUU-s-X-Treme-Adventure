/// @description Insert description here
// You can write your code in this editor
/*if (sign(image_xscale) == 1) //facing LEEEEFT /
{
	if (obj_player.bbox_bottom - 1 <= intendedy + 32) && (x + 32 >= obj_player.bbox_left - max(obj_player.hsp, 0))
		y = intendedy
	else
		y = -2763
}
else //facing RIIIIGHT \
{
	if (obj_player.bbox_bottom - 1 <= intendedy + 32) && (x + 32 <= obj_player.bbox_right - 1 - min(obj_player.hsp, 0))
		y = intendedy
	else
		y = -2763
}*/
if (obj_player.bbox_bottom - 1 - abs(obj_player.hsp) <= intendedy + 32)
	y = intendedy
else
	y = -2763