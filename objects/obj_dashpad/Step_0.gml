/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	obj_player.hsp = 25 * image_xscale * launchdirection
	if (abs(obj_player.hsp) < 25)
		audio_play_sound(snd_dashpad,1,false)
}