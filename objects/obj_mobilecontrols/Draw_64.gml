/// @description Insert description here
// You can write your code in this editor
if global.inputtype = 3 && hide=false && !instance_exists(obj_stageclear) && !(instance_exists(obj_dialoguebox) && !instance_exists(obj_hintdialoguebox)) && !instance_exists(obj_gameover)
{
	if room=room_options
	{
		draw_sprite_ext(spr_up,1,96-global.controldistance,256,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_up))
		draw_sprite_ext(spr_left,1,32-global.controldistance,320,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_left))
		draw_sprite_ext(spr_right,1,160-global.controldistance,320,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_right))
		draw_sprite_ext(spr_down,1,96-global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_down))
		draw_sprite_ext(spr_jump,1,416+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_jump))
		draw_sprite_ext(spr_dash,1,480+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_dash))
		draw_set_alpha(1)
	}
	if room=room_soundtest
	{
		draw_set_alpha(1)
		draw_sprite(spr_left,0,192,352)
		draw_sprite(spr_resume,0,256,352)
		draw_sprite(spr_cease,0,320,352)
		draw_sprite(spr_right,0,384,352)
		draw_sprite(spr_quit,0,288,416)
		draw_set_alpha(1)
	}
	if room=room_extras
	{
		if !(instance_exists(obj_cheats) || instance_exists(obj_credits))
		{
			draw_sprite_ext(spr_up,0,96-global.controldistance,256,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_up))
			draw_sprite_ext(spr_left,0,32-global.controldistance,320,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_left))
			draw_sprite_ext(spr_right,0,160-global.controldistance,320,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_right))
			draw_sprite_ext(spr_down,0,96-global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_down))
			draw_sprite_ext(spr_resume,0,416+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_jump))
			draw_sprite_ext(spr_quit,0,480+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_dash))
			if instance_exists(obj_achievements)
			{
				draw_sprite_ext(spr_delete,0,544+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_run))
			}
			draw_set_alpha(1)
		}
	}
	if global.inlevel {
		if instance_exists(obj_electrobot_bosscutscene1)
		{
			draw_sprite_ext(spr_resume,0,544+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_run))
		}
		else {
			draw_sprite_ext(spr_up,0,96-global.controldistance,256,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_up))
			draw_sprite_ext(spr_left,0,32-global.controldistance,320,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_left))
			draw_sprite_ext(spr_right,0,160-global.controldistance,320,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_right))
			draw_sprite_ext(spr_down,0,96-global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_down))
			draw_sprite_ext(spr_jump,0,416+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_jump))
			draw_sprite_ext(spr_dash,0,480+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_dash))
			draw_sprite_ext(spr_run,0,544+global.controldistance,384,1,1,0,c_white,global.controlalpha-(global.controlalpha*0.5*global.key_run)) // YEEESH what a mess. Anything for VISUAL FEEDBACK...
			if !(room=room_options_test) && !(room=room_soundtest)
			{
				draw_set_alpha(1)
				draw_sprite(spr_pause,0,576,32)
			}
			draw_set_alpha(1)
		}
	}
}