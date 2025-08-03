/// @description Insert description here
// You can write your code in this editor
if !(os_type=os_android)
{
	var fullscreend = window_get_fullscreen()
	if fullscreend=false
	{
		window_set_fullscreen(true)
	}
	else {
		window_set_fullscreen(false)
	}
	audio_play_sound(snd_confirm,1,false)
}
else {
	audio_play_sound(snd_nicetry,1,false)
}