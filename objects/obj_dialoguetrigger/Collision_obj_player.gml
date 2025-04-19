/// @description Insert description here
// You can write your code in this editor
if global.voicelines=true
{
	audio_group_stop_all(voicelines)
	audio_play_sound(sound,1,false,2.5)
	instance_destroy()
}
else {
	instance_destroy()
}