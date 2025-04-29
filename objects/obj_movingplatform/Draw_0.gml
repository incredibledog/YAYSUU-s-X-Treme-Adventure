/// @description Insert description here
// You can write your code in this editor
if (position != 0)
	draw_sprite_ext(spr_movingplatform_spot, image_index, firstpointx, firstpointy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (position != 1)
	draw_sprite_ext(spr_movingplatform_spot, image_index, otherpointx, otherpointy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

draw_sprite_ext(sprite_index, image_index, x, intendedy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

if (global.showcollision)
{
	draw_sprite_ext(spr_semistop_a, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	if (y != intendedy)
		draw_sprite_ext(spr_semistop_a, image_index, x, intendedy, image_xscale, image_yscale, image_angle, image_blend, 0.5)
}