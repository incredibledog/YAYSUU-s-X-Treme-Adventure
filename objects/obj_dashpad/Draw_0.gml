/// @description Insert description here
// You can write your code in this editor
if (launchdirection == -1)
	draw_sprite_ext(sprite_index, image_index, x + 32, y, -image_xscale, image_yscale, image_angle, image_blend, image_alpha)
else
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)