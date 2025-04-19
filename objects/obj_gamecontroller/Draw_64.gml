/// @description Insert description here
// You can write your code in this editor
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