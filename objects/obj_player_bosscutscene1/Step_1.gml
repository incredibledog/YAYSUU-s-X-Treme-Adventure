/// @description Insert description here
// You can write your code in this editor
if global.cutscenestate!=8 && !audio_is_playing(mus_cutscene)
{
	audio_play_sound(mus_cutscene,1,true,global.musvol)
	audio_sound_gain(mus_cutscene,global.musvol)
}