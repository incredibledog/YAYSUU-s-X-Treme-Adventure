/// @description Insert description here
// You can write your code in this editor
if st>0
	st--
else
	image_alpha=1

if (started)
{
	if delay>0
		delay--
	else if (!obj_fadeblack.fading)
		loadroom(room_mainmenu, false)
}
else
{
	if global.key_start || (global.key_jumpp && st=0)
	{
		delay=60
		started=true
		audio_stop_sound(mus_title)
		audio_play_sound(snd_confirm,1,false)
		image_speed=2
	}
}