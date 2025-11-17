/// @description Insert description here
// You can write your code in this editor
if global.key_menuquit
{
	audio_play_sound(snd_nahnvm,1,false,global.sndvol)
	instance_destroy()
}