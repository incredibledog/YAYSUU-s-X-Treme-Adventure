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
chos=clamp(chos,1,10)
switch chos
{
	case 1:
	if global.key_jumpp
	{
		audio_play_sound(snd_confirm,1,false)
		loadroom(room_credits,loadtype.menu)
	}
	break;
	case 2:
	if global.key_jumpp
	{
		audio_play_sound(snd_confirm,1,false)
		loadroom(room_soundtest,loadtype.menu)
	}
	case 3:
	// TODO: MUSEUM GOES HERE... FOR CLICKTEAM VERSIONS OF LEVELS AND OTHER SUCH OLD MATERIAL LIKE JADE GULLY
	break;
	case 4:
	if global.key_jumpp
	{
		audio_play_sound(snd_confirm,1,false)
		instance_deactivate_object(obj_extras)
		instance_create_depth(x,y,depth,obj_cheats)
	}
	break;
	case 5:
	// TODO: LISTEN I RAN OUT OF IDEAS 
	break;
	case 6:
	// TODO: HMMM.. DO WE EVEN NEED THIS MANY OPTIONS FOR AN EXTRAS MENU
	break;
	case 7:
	// TODO: PROBABLY NOT
	break;
	case 8:
	// TODO: NOODLES ARE THE WATER.
	break;
	case 9:
	// TODO: THIS GAME IS SPONSORED BY -W-O-K-E- ME, VASSIE! I'M WOKE!.
	break;
	case 10:
	{
		if global.key_jumpp
		{
			audio_stop_sound(mus_extras)
			audio_play_sound(snd_nahnvm,1,false)
			loadroom(room_mainmenu, false)
		}
	}
	break;
}
if global.key_dashp
{
	audio_stop_sound(mus_extras)
	audio_play_sound(snd_nahnvm,1,false)
	loadroom(room_mainmenu, false)
}