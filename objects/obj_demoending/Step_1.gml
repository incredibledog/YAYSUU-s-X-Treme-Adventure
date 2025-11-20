/// @description Insert description here
// You can write your code in this editor
if !init && !audio_is_playing(mus_youdidit)
{
	audio_play_sound(mus_youdidit,1,false,global.musvol)
	init=true
}