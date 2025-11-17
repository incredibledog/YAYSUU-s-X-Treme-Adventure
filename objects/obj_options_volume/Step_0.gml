/// @description Insert description here
// You can write your code in this editor
if (obj_fadeblack.fading)
	return

if global.key_downp
{
	chos++
	audio_play_sound(snd_move,1,false,global.sndvol)
}
if global.key_upp
{
	chos--
	audio_play_sound(snd_move,1,false,global.sndvol)
}
chos=clamp(chos,1,6)
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
		if (global.key_leftp)
			volume-=0.02
		volume-=0.01
		audio_master_gain(round(volume / 0.05) * 0.05)
	}
	else
	{
		volume = round(volume / 0.05) * 0.05
		audio_master_gain(volume)
	}
	volume=clamp(volume,0,1) // all based things must come to a cringe
	break;
	case 2:
	if global.key_right
	{
		if (global.key_rightp)
			global.musvol+=0.02
		global.musvol+=0.01
		audio_sound_gain(global.currentsong,(round(global.musvol / 0.05) * 0.05))
	}
	else if global.key_left
	{
		if (global.key_leftp)
			global.musvol-=0.02
		global.musvol-=0.01
		audio_sound_gain(global.currentsong,(round(global.musvol / 0.05) * 0.05))
	}
	else
	{
		global.musvol = round(global.musvol / 0.05) * 0.05
		audio_sound_gain(global.currentsong,global.musvol)
	}
	global.musvol=clamp(global.musvol,0,1)
	break;
	case 3:
	if global.key_right
	{
		if (global.key_rightp)
			global.sndvol+=0.02
		audio_stop_sound(snd_typewriterclick)
		audio_play_sound(snd_typewriterclick,1,false,global.sndvol)
		global.sndvol+=0.01
	}
	else if global.key_left
	{
		if (global.key_leftp)
			global.sndvol-=0.02
		audio_stop_sound(snd_typewriterclick)
		audio_play_sound(snd_typewriterclick,1,false,global.sndvol)
		global.sndvol-=0.01
	}
	else
	{
		global.sndvol = round(global.sndvol / 0.05) * 0.05
	}
	global.sndvol=clamp(global.sndvol,0,1)
	case 4:
	if global.key_menuaccept
	{
		global.voicelines=!global.voicelines
		audio_play_sound(snd_confirm,1,false,global.sndvol)
	}
	break;
	case 5:
	if global.key_menuaccept
	{
		volume=1
		audio_master_gain(volume)
		global.musvol=1
		audio_sound_gain(global.currentsong,global.musvol)
		global.sndvol=1
		global.voicelines=true
		audio_play_sound(snd_kablooey,1,false,global.sndvol)
	}
	break;
	case 6:
	if global.key_menuaccept
	{
		ini_open("savedata.ini")
		ini_write_real("settings","volume",volume)
		ini_write_real("settings","musvol",global.musvol)
		ini_write_real("settings","sndvol",global.sndvol)
		ini_write_real("settings","voicelines",global.voicelines)
		ini_close()
		instance_destroy()
		instance_activate_object(obj_options)
		audio_play_sound(snd_confirm,1,false,global.sndvol)
	}
	break;
}
if global.key_menuquit
{
	ini_open("savedata.ini")
	audio_master_gain(ini_read_real("settings","volume",1))
	global.musvol=ini_read_real("settings","musvol",1)
	global.sndvol=ini_read_real("settings","sndvol",1)
	global.voicelines=ini_read_real("settings","voicelines",true)
	ini_close()
	instance_destroy()
	instance_activate_object(obj_options)
	audio_play_sound(snd_confirm,1,false,global.sndvol)
}