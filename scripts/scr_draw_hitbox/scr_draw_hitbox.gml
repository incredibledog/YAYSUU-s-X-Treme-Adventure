// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_hitbox(){
	if (global.showcollision)
	{
		draw_sprite_ext(mask_index, 0, x, y, 1, 1, image_angle, hitboxcolor, 1)
		draw_sprite_ext(mask_index, 0, x + hsp, y + vsp, 1, 1, image_angle, hitboxcolor, 0.5)
	}
}