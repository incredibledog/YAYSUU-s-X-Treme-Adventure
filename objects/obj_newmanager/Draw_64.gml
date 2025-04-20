if window_get_fullscreen() && global.borders=true
{
	switch room
	{
		case room_chillfields_1:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2b:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2c:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_2d:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_chillfields_boss:
		draw_sprite(spr_chillfields_border,0,0,0)
		break;
		case room_mysticmanor_1:
		draw_sprite(spr_mysticmanor_border,0,0,0)
		break;
		case room_tutorial:
		draw_sprite(spr_tutorial_border,0,0,0)
		break;
		case room_gameover:
		break;
		default:
		draw_sprite(spr_default_border,0,0,0)
		break;
	}
}


if (instance_number(obj_fadeblack) > 1)
{
	draw_set_font(global.subtitlefont)
	draw_text(0, 0, "mah boy there are " + instance_number(obj_fadeblack) + "obj_fadeblack here")
}
if (instance_number(obj_pause) > 1)
{
	draw_set_font(global.subtitlefont)
	draw_text(0, 16, "mah boy there are " + instance_number(obj_pause) + "obj_pause here")
}
if (instance_number(obj_camera) > 1)
{
	draw_set_font(global.subtitlefont)
	draw_text(0, 32, "mah boy there are " + instance_number(obj_camera) + "obj_camera here")
}