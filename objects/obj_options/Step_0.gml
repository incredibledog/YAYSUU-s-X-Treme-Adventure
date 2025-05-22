/// @description Insert description here
// You can write your code in this editor
chos=clamp(chos,1,10)
volume=clamp(volume,0,1)
global.sensitivity=clamp(global.sensitivity,0.01,1)
global.controlalpha=clamp(global.controlalpha,0.01,1)
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
switch chos
{
	case 1:
	if global.key_right
	{
		volume+=0.01
		audio_master_gain(volume)
	}
	else if global.key_left
	{
		volume-=0.01
		audio_master_gain(volume)
	}
	else
	{
		volume = round(volume / 0.05) * 0.05
		audio_master_gain(volume)
	}
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
	}
	break;
	case 3:
	if global.key_jumpp
	{
		window_set_fullscreen(!window_get_fullscreen())
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 4:
	if global.key_jumpp
	{
		global.screenshake=!global.screenshake
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 5:
	if global.key_jumpp
	{
		global.borders=!global.borders
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 6:
	if global.key_jumpp
	{
		global.speedrun=!global.speedrun
		audio_play_sound(snd_confirm,1,false)
	}
	break;
	case 7:
	if global.key_jumpp
	{
		ini_open("savedata.ini")
		ini_section_delete("records")
		ini_close()
		audio_play_sound(snd_kablooey,1,false)
	}
	break;
	case 8:
	if global.key_jumpp
	{
		volume=1
		audio_master_gain(volume)
		global.sensitivity=0.35
		global.controlalpha=0.5
		global.screenshake=true
		global.borders=true
		audio_play_sound(snd_kablooey,1,false)
	}
	break;
	case 9:
	{
		if global.key_jumpp
		{
			ini_open("savedata.ini")
			ini_write_real("settings","volume",volume)
			ini_write_real("settings","sensitivity",global.sensitivity)
			ini_write_real("settings","controlalpha",global.controlalpha)
			ini_write_real("settings","fullscreen",window_get_fullscreen())
			ini_write_real("settings","screenshake",global.screenshake)
			ini_write_real("settings","borders",global.borders)
			//ini_write_real("settings","inputtype",global.inputtype)
			ini_close()
			audio_stop_sound(mus_options)
			audio_play_sound(snd_confirm,1,false)
			loadroom(room_mainmenu, false)
			instance_destroy()
		}
	}
	break;
	case 10:
	{
		if global.key_jumpp
		{
			ini_open("savedata.ini")
			audio_master_gain(ini_read_real("settings","volume",1))
			global.sensitivity=ini_read_real("settings","sensitivity",0.35)
			global.controlalpha=ini_read_real("settings","controlalpha",0.5)
			window_set_fullscreen(ini_read_real("settings","fullscreen",0))
			global.screenshake=ini_read_real("settings","screenshake",1)
			global.borders=ini_read_real("settings","borders",1)
			//global.inputtype=ini_read_real("settings","inputtype",1)
			ini_close()
			audio_stop_sound(mus_options)
			audio_play_sound(snd_nahnvm,1,false)
			loadroom(room_mainmenu, false)
			instance_destroy()
		}
	}
	break;
}
if global.key_dashp
{
	ini_open("savedata.ini")
	audio_master_gain(ini_read_real("settings","volume",1))
	global.sensitivity=ini_read_real("settings","sensitivity",0.35)
	global.controlalpha=ini_read_real("settings","controlalpha",0.5)
	window_set_fullscreen(ini_read_real("settings","fullscreen",0))
	global.screenshake=ini_read_real("settings","screenshake",1)
	global.borders=ini_read_real("settings","borders",1)
	//global.inputtype=ini_read_real("settings","inputtype",1)
	ini_close()
	audio_stop_sound(mus_options)
	audio_play_sound(snd_nahnvm,1,false)
	loadroom(room_mainmenu, false)
	instance_destroy()
}