/// @description Insert description here
// You can write your code in this editor
if global.p1_key_upp && selected=false
{
	chos--
	audio_play_sound(snd_move,1,false)
}
else if global.p1_key_downp && selected=false
{
	chos++
	audio_play_sound(snd_move,1,false)
}
chos=clamp(chos,1,4)
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
if (global.p1_key_menuaccept) && selected=false
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
			nextroom=room_extras
			image_alpha=1
			image_speed=1
			delay=60 
			selected=true
			audio_play_sound(snd_confirm,1,false)
			break
	}
}

if delay>0 && !global.quickmenu
	delay--
else if selected=true && !obj_fadeblack.fading
	loadroom(nextroom, loadtype.menu)