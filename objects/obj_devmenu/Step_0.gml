if (global.key_leftp && selection > 0)
{
	selection--
	audio_play_sound(snd_kablooey_jr, 0, false)
}
else if (global.key_rightp && selection < 4)
{
	selection++
	audio_play_sound(snd_kablooey_jr, 0, false)
}
switch (selection)
{
	case 0:
		optiontext = "START"
		if (global.key_jumpp)
			loadroom(room_mainmenu, loadtype.menu)
		break;
	case 1:
		optiontext = "NO DEV"
		if (global.key_jumpp)
		{
			loadroom(room_mainmenu, loadtype.menu)
			global.indev = false
			global.quickmenu = false
		}
		break;
	case 2:
		optiontext = "LEVEL SELECT"
		if (global.key_jumpp)
			loadroom(room_trialmenu, loadtype.menu)
		break;
	case 3:
		optiontext = "MYSTIC 2"
		if (global.key_jumpp)
			loadroom(room_mysticmanor_2, loadtype.newlevel)
		break;
	case 4:
		optiontext = "DEVROOM"
		if (global.key_jumpp)
			loadroom(room_dev, loadtype.newlevel)
		break;
}

if (global.key_upp)
{
	scr_changecharacter("Y", 0)
	audio_play_sound(snd_slip, 0, false)
}
else if (global.key_downp)
{
	scr_changecharacter("T", 0)
	audio_play_sound(snd_slip, 0, false)
}