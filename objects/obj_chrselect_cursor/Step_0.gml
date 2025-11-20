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
switch chos2
{
	case 1:
	p2charname="AND YAYSUU"
	break;
	case 2:
	p2charname="AND TEDDY"
	break;
}
switch savestage[charlife]
{
	case 0:
	currentstage=room_tutorial
	lvlname="Tutorial"
	gameprogress=0
	break;
	case 1:
	currentstage=room_chillfields_1
	lvlname="Chill Fields Stage 1"
	gameprogress=4
	break;
	case 2:
	currentstage=room_chillfields_2
	lvlname="Chill Fields Stage 2"
	gameprogress=8
	break;
	case 3:
	currentstage=room_chillfields_boss
	lvlname="Vs. Electrobot"
	gameprogress=17
	break;
	case 4:
	currentstage=room_mysticmanor_1
	lvlname="Mystic Manor Stage 1"
	gameprogress=25
	break;
	case 5:
	currentstage=room_mysticmanor_2
	lvlname="Mystic Manor Stage 2"
	gameprogress=33
	break;
	case 6:
	currentstage=room_househub
	lvlname="ALL CLEAR"
	gameprogress=100
	break;
	default:
	currentstage=room_jasperror
	lvlname="???"
	gameprogress=404
	break;
}
if (selected)
{
	if delay > 0 && !global.quickmenu
		delay--
	else if (!obj_fadeblack.fading)
	{
		if !(global.trial) {
			if global.arcade
				loadnewstage(3,room_tutorial)
			else
				loadnewstage(savelives[charlife],currentstage)
		}
		else {
			if global.prevroom=room_extrastages || global.prevroom=room_extras
			{
				loadroom(room_extrastages, loadtype.menu)
			}
			else {
				loadroom(room_trialmenu, loadtype.menu)
			}
		}
	}
}
if global.key_runp && !global.trial && !global.arcade && !instance_exists(obj_notification)
{
	with instance_create_depth(0,0,depth-1,obj_notification)
	{
		text="Are you sure you want to delete save data for "+other.charname+"?"
		color="red"
		choicer=true
		notifid=1
	}
}
else if !instance_exists(obj_notification)
{
	if ((global.key_menuaccept) || (global.p2_key_menuaccept && global.multiplayer)) && !selected
	{
		if (!teddyavailable && chos == 2)
			audio_play_sound(snd_nicetry,1,false,global.sndvol)
		else
		{
			delay=120
			selected=true
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			if (chos == 1)
			{
				global.char = "Y"
				global.p2char = "T"
				audio_play_sound(snd_yaysuuselect,1,false,global.sndvol*global.voicelines)
			}
			else if (chos == 2)
			{
				global.char = "T"
				global.p2char = "Y"
				audio_play_sound(snd_teddyselect,1,false,global.sndvol*global.voicelines)
			}
			with (global.mainplayer)
				scr_setupcharacter(global.char, 0)
		}
	}
	if ((global.p2_key_menuaccept || global.p2_key_jump) && !global.multiplayer && !global.mobile && global.trial)
	{
		global.multiplayer=true
		audio_play_sound(snd_confirm,1,false,global.sndvol)
	}
	else if global.key_menuquit
	{
		if !selected
		{
			if global.prevroom=room_extras || global.prevroom=room_extrastages
			{
				loadroom(room_extras, loadtype.menu)
			}
			else {
				loadroom(room_mainmenu, loadtype.menu)
			}
		}
		else if selected
		{
			selected=false
			delay=0
			audio_stop_sound(snd_yaysuuselect)
			audio_stop_sound(snd_teddyselect)
		}
		audio_play_sound(snd_nahnvm,1,false,global.sndvol)
	}
	else if ((global.key_rightp) || (global.p2_key_rightp && global.multiplayer)) && !selected
	{
		audio_play_sound(snd_move,1,false,global.sndvol)
		if chos=1
			chos++
		else if chos=2
			chos--
		chos2=chos=1 ? 2 : 1
	}
	else if ((global.key_leftp) || (global.p2_key_leftp && global.multiplayer)) && !selected
	{
		audio_play_sound(snd_move,1,false,global.sndvol)
		if chos=1
			chos++
		else if chos=2
			chos--
		chos2=chos=1 ? 2 : 1
	}
	else if ((global.key_upp) || (global.key_downp)) && !selected && !global.trial
	{
		global.arcade=!global.arcade
		audio_play_sound(snd_move,1,false,global.sndvol)
	}
	/*else if global.key_upp
	{
		audio_play_sound(snd_move,1,false,global.sndvol)
		if (chos != 1.5)
			prevchos = chos
		chos = 1.5
	}
	 NOT EVER...
	else if global.key_downp && chos == 1.5
	{
	audio_play_sound(snd_move,1,false,global.sndvol)
		chos = prevchos
	}*/
	
	chos=clamp(chos,1,2)
	chos2=clamp(chos2,1,2)
	if chos=1
		x=224
	//else if chos=1.5
	//	x=320
	else
		x=416
	if chos2=1
		p2x=224
	else
		p2x=416
}