/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < image_xscale; i += 1)
	draw_sprite_ext(sprite_index, image_index + i, x + (i * 32), y, 1, 1, image_angle, image_blend, image_alpha);
if (image_yscale > 1)
	draw_sprite_tileblock(spr_water, image_index, x, y + 32, image_xscale, image_yscale - 1, image_blend, image_alpha)