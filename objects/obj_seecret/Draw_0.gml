/// @description Insert description here
// You can write your code in this editor
if (topsprite == noone)
	draw_sprite_tileblock(sprite_index, image_index, x, y, image_xscale, image_yscale, image_blend, image_alpha)
else
{
	draw_sprite_tileblock(topsprite, image_index, x, y, image_xscale, 1, image_blend, image_alpha)
	draw_sprite_tileblock(sprite_index, image_index, x, y + sprite_get_height(topsprite), image_xscale, image_yscale - 1, image_blend, image_alpha)
}