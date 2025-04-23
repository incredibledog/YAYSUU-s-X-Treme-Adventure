/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	audio_group_stop_all(voicelines)
	audio_play_sound(sound,1,false,2.5)
	instance_destroy()
}