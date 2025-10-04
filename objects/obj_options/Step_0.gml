/// @description Insert description here
// You can write your code in this editor
if (obj_fadeblack.fading)
	return

if global.key_downp
{
	chos++
	audio_play_sound(snd_move,1,false)
}
if global.key_upp
{
	chos--
	audio_play_sound(snd_move,1,false)
}
chos=clamp(chos,1,11)
switch chos
{
	case 1:
	if global.key_right
	{
		if (global.key_rightp)
			volume+=0.02
		volume+=0.01
		audio_master_gain(round(volume / 0.05) * 0.05)
	}
	else if global.key_left
	{
		if (global.key_rightp)
			volume-=0.02
		volume-=0.01
		audio_master_gain(round(volume / 0.05) * 0.05)
	}
	else
	{
		volume = round(volume / 0.05) * 0.05
		audio_master_gain(volume)
	}
	volume=clamp(volume,0,2)
	break;
	case 2:
	if os_type=os_android && !gamepad_is_connected(0)
	{
		if global.key_right 
		{
			global.controlalpha+=0.01
		}
		else if global.key_left 
		{
			global.controlalpha-=0.01
		}
		else
		{
			global.controlalpha = round(global.controlalpha / 0.05) * 0.05
		}
		global.controlalpha=clamp(global.controlalpha,0.01,1)
	}
	else {
		if global.key_right 
		{
			global.sensitivity+=0.01
		}
		else if global.key_left 
		{
			global.sensitivity-=0.01
		}
		else
		{
			global.sensitivity = round(global.sensitivity / 0.05) * 0.05
		}
		global.sensitivity=clamp(global.sensitivity,0.01,1)
	}
	break;
	case 3:
	if global.key_menuaccept
	{
		window_set_fullscreen(!window_get_fullscreen())
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 4:
	var prevscale=global.screenscale
	if global.key_rightp
	{
		global.screenscale++
		audio_play_sound(snd_move,1,false)
	}
	if global.key_leftp
	{
		global.screenscale--
		audio_play_sound(snd_move,1,false)
	}
	global.screenscale=clamp(global.screenscale,1,3)
	if !(global.screenscale=prevscale)
	{
		window_set_size(640*global.screenscale,480*global.screenscale)
	}
	break;
	case 5:
	if global.key_menuaccept
	{
		global.screenshake=!global.screenshake
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 6:
	if global.key_menuaccept
	{
		global.borders=!global.borders
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 7:
	if global.key_menuaccept
	{
		global.speedrun=!global.speedrun
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 8:
	if global.key_menuaccept
	{
		ini_open("savedata.ini")
		ini_section_delete("records")
		ini_close()
		audio_play_sound(snd_kablooey,1,false)
	}
	break;
	case 9:
	if global.key_menuaccept
	{
		volume=1
		audio_master_gain(volume)
		global.sensitivity=0.35
		global.controlalpha=0.5
		global.screenshake=true
		global.borders=true
		global.speedrun=false
		global.screenscale=1
		window_set_size(640*global.screenscale,480*global.screenscale)
		audio_play_sound(snd_kablooey,1,false)
	}
	break;
	case 10:
	if global.key_menuaccept
	{
		audio_play_sound(snd_confirm,1,false)
		instance_deactivate_object(obj_options)
		instance_create_depth(x,y,depth,obj_options_controls)
	}
	break;
	case 11:
	if global.key_menuaccept
	{
		ini_open("savedata.ini")
		ini_write_real("settings","volume",volume)
		ini_write_real("settings","sensitivity",global.sensitivity)
		ini_write_real("settings","controlalpha",global.controlalpha)
		ini_write_real("settings","fullscreen",window_get_fullscreen())
		ini_write_real("settings","screenshake",global.screenshake)
		ini_write_real("settings","borders",global.borders)
		ini_write_real("settings","speedrun",global.speedrun)
		ini_write_real("settings","screenscale",global.screenscale)
		ini_close()
		audio_stop_sound(mus_options)
		audio_play_sound(snd_confirm,1,false)
		loadroom(room_mainmenu, false)
	}
	break;
}
if global.key_menuquit
{
	ini_open("savedata.ini")
	audio_master_gain(ini_read_real("settings","volume",1))
	global.sensitivity=ini_read_real("settings","sensitivity",0.35)
	global.controlalpha=ini_read_real("settings","controlalpha",0.5)
	window_set_fullscreen(ini_read_real("settings","fullscreen",0))
	global.screenshake=ini_read_real("settings","screenshake",1)
	global.borders=ini_read_real("settings","borders",1)
	global.speedrun=ini_read_real("settings","speedrun",1)
	global.screenscale=ini_read_real("settings","screenscale",1)
	ini_close()
	window_set_size(640*global.screenscale,480*global.screenscale)
	audio_stop_sound(mus_options)
	audio_play_sound(snd_nahnvm,1,false)
	loadroom(room_mainmenu, false)
}