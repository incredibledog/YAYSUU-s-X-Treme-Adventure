/// @description Insert description here
// You can write your code in this editor
// The extras menu shows it's face at ONCE...
// don't worry about the cheats or museum or story menu I'll do those -yaysuu
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
chos=clamp(chos,1,7)
switch chos
{
	case 1:
	if global.key_menuaccept
	{
		audio_play_sound(snd_confirm,1,false)
		instance_deactivate_object(obj_extras)
		instance_create_depth(x,y,depth,obj_credits)
	}
	break;
	case 2:
	if global.key_menuaccept
	{
		audio_play_sound(snd_confirm,1,false)
		loadroom(room_soundtest,loadtype.menu)
	}
	break;
	case 3:
	if global.key_menuaccept
	{
		audio_play_sound(snd_confirm,1,false)
		instance_deactivate_object(obj_extras)
		instance_create_depth(x,y,depth,obj_cheats)
	}
	break;
	case 4:
	if global.key_menuaccept
	{
		audio_play_sound(snd_confirm,1,false)
		global.trial=true
		loadroom(room_charselect,loadtype.menu)
	}
	break;
	case 5:
	if global.key_menuaccept
	{
		audio_play_sound(snd_confirm,1,false)
		instance_deactivate_object(obj_extras)
		instance_create_depth(x,y,depth,obj_achievements)
	}
	break;
	case 6:
	if global.key_menuaccept
	{
		audio_play_sound(snd_confirm,1,false)
		instance_deactivate_object(obj_extras)
		instance_create_depth(x,y,depth,obj_gallery)
	}
	break;
	case 7:
	if global.key_menuaccept
	{
		audio_stop_sound(mus_extras)
		audio_play_sound(snd_nahnvm,1,false)
		loadroom(room_mainmenu, loadtype.menu)
	}
	break;
}
if global.key_menuquit
{
	audio_stop_sound(mus_extras)
	audio_play_sound(snd_nahnvm,1,false)
	loadroom(room_mainmenu, loadtype.menu)
}