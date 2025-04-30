/// @description Insert description here
// You can write your code in this editor
if (position != 0)
{
	draw_sprite_ext(spr_movingplatform_socket, 0, firstpointx, firstpointy, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(spr_movingplatform_socket, 0, firstpointx + (image_xscale * 32), firstpointy, -1, image_yscale, image_angle, image_blend, image_alpha)
}
if (position != 1)
{
	draw_sprite_ext(spr_movingplatform_socket, 0, otherpointx, otherpointy, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(spr_movingplatform_socket, 0, otherpointx + (image_xscale * 32), otherpointy, -1, image_yscale, image_angle, image_blend, image_alpha)
}
draw_set_alpha(1)
draw_set_color(#1D2B53)
draw_line_width(firstpointx + 8, firstpointy + 6, otherpointx + 8, otherpointy + 6, 2)
draw_line_width(firstpointx + (image_xscale * 32) - 8, firstpointy + 6, otherpointx + (image_xscale * 32) - 8, otherpointy + 6, 2)
draw_set_color(c_white)
draw_sprite_ext(spr_movingplatform_leftside, image_index, x, intendedy, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_movingplatform_rightside, image_index, x + (image_xscale * 32), intendedy, 1, 1, image_angle, image_blend, image_alpha)
if (image_xscale > 1)
	draw_sprite_tileblock(spr_movingplatform_main, 0, x + 16, intendedy, image_xscale - 1, 1, image_blend, image_alpha)
if (moving)
{
	draw_sprite_ext(spr_movingplatform_movingfella, 1, x + (image_xscale * 16), intendedy, 1, 1, image_angle, image_blend, image_alpha)
}
else
	draw_sprite_ext(spr_movingplatform_fella, 0, x + (image_xscale * 16), intendedy, 1, 1, image_angle, image_blend, image_alpha)


if (global.showcollision)
{
	draw_sprite_ext(spr_semistop_a, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	if (y != intendedy)
		draw_sprite_ext(spr_semistop_a, image_index, x, intendedy, image_xscale, image_yscale, image_angle, image_blend, 0.5)
}