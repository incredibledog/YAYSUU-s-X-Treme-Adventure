/// @description Insert description here
// You can write your code in this editor

if global.key_down && !instance_exists(obj_notification)
{
	dedede++
	if dedede >= global.menurepeat_delay && dedede % global.menurepeat_holddelay == 0
	{
		chos++
		audio_play_sound(snd_move,1,false,global.sndvol)	
	}
} else if global.key_up && !instance_exists(obj_notification)
{
	dedede++
	if dedede >= global.menurepeat_delay && dedede % global.menurepeat_holddelay == 0
	{
		chos--
		audio_play_sound(snd_move,1,false,global.sndvol)
	}
} else {
	dedede = 0
}

if global.key_upp && selected=false
{
	chos--
	audio_play_sound(snd_move,1,false,global.sndvol)
}
else if global.key_downp && selected=false
{
	chos++
	audio_play_sound(snd_move,1,false,global.sndvol)
}

lastitem = 4
if chos > lastitem chos = 1 else if chos < 1 chos = lastitem
switch (chos)
{
	case 1:
		x=122
		y=118
		menustring="Experience the story of YAYSUU's X-Treme Adventure. "
		break
	case 2:
		x=158
		y=182
		menustring="Go for a highscore or a record time in Trial Mode! "
		break
	case 3:
		x=194
		y=246
		menustring="Tweak your experience to your liking. "
		break
	case 4:
		x=230
		y=310
		menustring="Access cheats, and other such extra doodads! "
		break
}
if (global.key_menuaccept) && selected=false
{
	switch (chos)
	{
		case 1:
			global.trial=false
			nextroom=room_charselect
			image_alpha=1
			image_speed=1
			delay=60 
			selected=true
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			break
		case 2:
			global.trial=true
			nextroom=room_charselect
			image_alpha=1
			image_speed=1
			delay=60 
			selected=true
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			break
		case 3:
			nextroom=room_options
			image_alpha=1
			image_speed=1
			delay=60 
			selected=true
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			break
		case 4:
			nextroom=room_extras
			image_alpha=1
			image_speed=1
			delay=60 
			selected=true
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			break
	}
}
if global.key_menuquit && selected=false
{
	audio_play_sound(snd_nahnvm,1,false,global.sndvol)
	loadroom(room_titlescreen, loadtype.menu)
}
if delay>0 && !global.quickmenu
	delay--
else if selected=true && !obj_fadeblack.fading
	loadroom(nextroom, loadtype.menu)