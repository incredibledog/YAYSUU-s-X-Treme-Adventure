if global.key_left
{
	dedede++
	if dedede >= global.menurepeat_delay && dedede % global.menurepeat_holddelay == 0
	{
		selection--
		audio_play_sound(snd_kablooey_jr, 0, false)	
	}
} else if global.key_right
{
	dedede++
	if dedede >= global.menurepeat_delay && dedede % global.menurepeat_holddelay == 0
	{
		selection++
		audio_play_sound(snd_kablooey_jr, 0, false)
	}
} else {
	dedede = 0
}

if (global.key_leftp)
{
	selection--
	audio_play_sound(snd_kablooey_jr, 0, false)
}
else if (global.key_rightp)
{
	selection++
	audio_play_sound(snd_kablooey_jr, 0, false)
}

lastitem = 5
if selection > lastitem selection = 0 else if selection < 0 selection = lastitem

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
	case 5:
		optiontext = "START MULTIPLIER"
		if (global.key_jumpp)
		{
			global.multiplayer = true
			loadroom(room_mainmenu, loadtype.menu)
		}
		break;
}

if (global.key_upp)
{
	global.char="Y"
	scr_setupcharacter("Y", 0)
	audio_play_sound(snd_slip, 0, false)
}
else if (global.key_downp)
{
	global.char="T"
	scr_setupcharacter("T", 0)
	audio_play_sound(snd_slip, 0, false)
}