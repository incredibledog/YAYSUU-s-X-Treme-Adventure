/// @description Insert description here
// You can write your code in this editor
if global.inputtype = 3 && hide=false && !instance_exists(obj_stageclear) && !instance_exists(obj_dialoguebox) && !instance_exists(obj_gameover)
{
	if room=room_trialmenu || room=room_extrastages
	{
		draw_set_alpha(1)
		draw_sprite(spr_left,0,96,192)
		draw_sprite(spr_resume,0,224,192)
		draw_sprite(spr_quit,0,352,192)
		draw_sprite(spr_right,0,480,192)
	}
	else if room=room_options
	{
		draw_set_alpha(global.controlalpha)
		draw_sprite(spr_up,1,96-global.controldistance,256)
		draw_sprite(spr_left,1,32-global.controldistance,320)
		draw_sprite(spr_right,1,160-global.controldistance,320)
		draw_sprite(spr_down,1,96-global.controldistance,384)
		draw_sprite(spr_jump,1,416+global.controldistance,384)
		draw_sprite(spr_dash,1,480+global.controldistance,384)
		draw_set_alpha(1)
	}
	else if room=room_extras
	{
		if !(instance_exists(obj_cheats) || instance_exists(obj_credits))
		{
			draw_set_alpha(global.controlalpha)
			draw_sprite(spr_up,0,96-global.controldistance,256)
			draw_sprite(spr_left,0,32-global.controldistance,320)
			draw_sprite(spr_right,0,160-global.controldistance,320)
			draw_sprite(spr_down,0,96-global.controldistance,384)
			draw_sprite(spr_resume,0,416+global.controldistance,384)
			draw_sprite(spr_quit,0,480+global.controldistance,384)
			draw_set_alpha(1)
		}
	}
	else if global.inlevel || room=room_soundtest {
		draw_set_alpha(global.controlalpha)
		draw_sprite(spr_up,0,96-global.controldistance,256)
		draw_sprite(spr_left,0,32-global.controldistance,320)
		draw_sprite(spr_right,0,160-global.controldistance,320)
		draw_sprite(spr_down,0,96-global.controldistance,384)
		draw_sprite(spr_jump,0,416+global.controldistance,384)
		draw_sprite(spr_dash,0,480+global.controldistance,384)
		draw_sprite(spr_run,0,544+global.controldistance,384)
		if !(room=room_options_test) && !(room=room_soundtest)
		{
			draw_set_alpha(1)
			draw_sprite(spr_pause,0,576,32)
		}
		draw_set_alpha(1)
	}
}