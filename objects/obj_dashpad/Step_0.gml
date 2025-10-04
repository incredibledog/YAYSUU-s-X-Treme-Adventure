/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	var whichplayer = scr_temphacky_closestplayer()
	whichplayer.hsp = 25 * image_xscale * launchdirection
	if (abs(whichplayer.hsp) < 25)
		audio_play_sound(snd_dashpad,1,false)
}