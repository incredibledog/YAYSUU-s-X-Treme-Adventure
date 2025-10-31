/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	var whichplayer = global.firstplayertouch
	var bounceboth = 1
	if (global.secondplayertouch != noone)
		bounceboth = 2
	repeat(bounceboth)
	{
		whichplayer.hsp = 13 * image_xscale * launchdirection
		if (abs(whichplayer.hsp) < 13)
			audio_play_sound(snd_dashpad,1,false)
			if (global.secondplayertouch != noone)
				whichplayer = global.secondplayertouch
	}
}