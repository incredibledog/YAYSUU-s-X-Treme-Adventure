if global.jumpscare=true
	draw_sprite(spr_uncanny_jumpscare,0,0,0)

if window_get_fullscreen() && global.borders=true
{
	switch room
	{
		case room_chillfields_1:
		case room_chillfields_2:
		case room_chillfields_2b:
		case room_chillfields_2c:
		case room_chillfields_2d:
		case room_chillfields_boss:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_mysticmanor_1:
		case room_mysticmanor_1b:
		case room_mysticmanor_1c:
		case room_mysticmanor_2:
		case room_mysticmanor_2b:
		case room_mysticmanor_2c:
		draw_sprite(spr_mysticmanor_border,0,0,0)
		break;
		case room_tutorial:
		draw_sprite(spr_tutorial_border,0,0,0)
		break;
		case room_glowstickcity:
		draw_sprite(spr_glowstickcity_border,0,0,0)
		break;
		case room_gameover:
		break;
		default:
		draw_sprite(spr_default_border,0,0,0)
		break;
	}
}
with (obj_fadeblack)
{
	gpu_set_blendmode(bm_subtract)
	draw_set_color(color)
	draw_rectangle(0,0,640,480,false)
	gpu_set_blendmode(bm_normal)
	draw_set_color(c_white)
	//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}


draw_set_valign(fa_top)
draw_set_font(global.subtitlefont)
if (windowpos != 1) && global.inlevel=true
	draw_text_yxa(0, windowpos*windowpos*-32, windowname, "lgray", true)
