/// @description Insert description here
// You can write your code in this editor
chos=clamp(chos,1,4)
if global.key_upp && selected=false
{
	chos--
	audio_play_sound(snd_move,1,false)
}
if global.key_downp && selected=false
{
	chos++
	audio_play_sound(snd_move,1,false)
}
switch (chos)
{
	case 1:
	x=122
	y=118
	break
	case 2:
	x=158
	y=182
	break
	case 3:
	x=194
	y=246
	break
	case 4:
	x=230
	y=310
	break
}
if (global.key_jumpp || global.key_start) && selected=false
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
			audio_play_sound(snd_confirm,1,false)
			break
		case 2:
			global.trial=true
			nextroom=room_charselect
			image_alpha=1
			image_speed=1
			delay=60 
			selected=true
			audio_play_sound(snd_confirm,1,false)
			break
		case 3:
			nextroom=room_options
			image_alpha=1
			image_speed=1
			delay=60 
			selected=true
			audio_play_sound(snd_confirm,1,false)
		break
		case 4:
			audio_stop_sound(snd_nicetry)
			audio_play_sound(snd_nicetry,1,false)
		break
	}
}

if delay>0
	delay--
else if selected=true && !obj_fadeblack.fading
{
	loadroom(nextroom, loadtype.menu)
}