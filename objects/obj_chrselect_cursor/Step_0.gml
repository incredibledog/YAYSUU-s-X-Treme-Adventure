/// @description Insert description here
// You can write your code in this editor
if (selected)
{
	if delay > 0
		delay--
	else if (!obj_fadeblack.fading)
		loadroom(room_trialmenu, loadtype.menu)
}
else
{
	if (global.key_start || global.key_jumpp)
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
	else if global.key_upp
	{
		audio_play_sound(snd_move,1,false)
		if (chos != 1.5)
			prevchos = chos
		chos = 1.5
	}
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