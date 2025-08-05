/// @description Insert description here
// You can write your code in this editor
switch chos
{
	case 1:
	charname="YAYSUU"
	charlife=0
	break;
	case 1.5:
	charname="COTTON"
	break;
	case 2:
	charname="TEDDY"
	charlife=1
	break;
}
switch savestage[charlife]
{
	case 0:
	currentstage=room_househub
	lvlname="Chill Fields Stage 1"
	gameprogress=0
	break;
	case 1:
	currentstage=room_chillfields_2
	lvlname="Chill Fields Stage 2"
	gameprogress=8
	break;
	case 2:
	currentstage=room_chillfields_boss
	lvlname="Vs. Electrobot"
	gameprogress=17
	break;
	case 3:
	currentstage=room_mysticmanor_1
	lvlname="Mystic Manor Stage 1"
	gameprogress=25
	break;
	case 4:
	currentstage=room_mysticmanor_2
	lvlname="Mystic Manor Stage 2"
	gameprogress=33
	break;
	default:
	currentstage=room_jasperror
	lvlname="???"
	gameprogress=404
	break;
}
if (selected)
{
	if delay > 0
		delay--
	else if (!obj_fadeblack.fading)
	{
		if !(global.trial) {
			global.timer = 0
			global.score = savescore[charlife]
			global.scoreadd = 0
			global.checkpoint=false
			global.coins=0
			global.coingoal = 100
			global.lives=savelives[charlife]
			loadroom(currentstage, loadtype.newlevel)
		}
		else {
			loadroom(room_trialmenu, loadtype.menu)
		}
	}
}
if global.key_runp && !global.trial
{
	ini_open("savedata.ini")
	if charlife=0
	{
		ini_section_delete("fileY")
		savelives[0]=ini_read_real("fileY","lives",3)
		savescore[0]=ini_read_real("fileY","score",0)
		savestage[0]=ini_read_real("fileY","stage",0)
		saveday[0]=ini_read_real("fileY","day",0)
		savemonth[0]=ini_read_real("fileY","month",0)
		saveyear[0]=ini_read_real("fileY","year",0)
	}
	if charlife=1
	{
		ini_section_delete("fileT")
		savelives[1]=ini_read_real("fileT","lives",3)
		savescore[1]=ini_read_real("fileT","score",0)
		savestage[1]=ini_read_real("fileT","stage",0)
		saveday[1]=ini_read_real("fileT","day",0)
		savemonth[1]=ini_read_real("fileT","month",0)
		saveyear[1]=ini_read_real("fileT","year",0)
	}
	audio_play_sound(snd_kablooey,1,false)
	ini_close()
}
else
{
	if (global.key_jumpp || global.key_start) && !selected
	{
		if (!teddyavailable && chos == 2)
			audio_play_sound(snd_nicetry,1,false)
		else
		{
			delay=120
			selected=true
			audio_play_sound(snd_confirm,1,false)
			if (chos == 1)
			{
				global.char="Y"
				audio_play_sound(snd_yaysuuselect,1,false)
			}
			else if (chos == 1.5)
			{
				global.char="C"
				audio_play_sound(snd_cottonselect,1,false)
			}
			else
			{
				global.char="T"
				audio_play_sound(snd_teddyselect,1,false)
			}
		}
	}
	else if global.key_dashp
	{
		loadroom(room_mainmenu, loadtype.menu)
		audio_play_sound(snd_nahnvm,1,false)
	}
	else if global.key_rightp
	{
		audio_play_sound(snd_move,1,false)
		chos++
	}
	else if global.key_leftp
	{
		audio_play_sound(snd_move,1,false)
		chos--
	}
	//else if global.key_upp
	//{
	//	audio_play_sound(snd_move,1,false)
	//	if (chos != 1.5)
	//		prevchos = chos
	//	chos = 1.5
	//}
	// NOT YET...
	else if global.key_downp && chos == 1.5
	{
		audio_play_sound(snd_move,1,false)
		chos = prevchos
	}
	
	chos=clamp(chos,1,2)
	if chos=1
		x=224
	else if chos=1.5
		x=320
	else
		x=416
}