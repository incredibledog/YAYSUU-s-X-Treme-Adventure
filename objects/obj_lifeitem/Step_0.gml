/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !audio_is_playing(snd_extralife) && audio_is_paused(global.currentsong)
{
	if !audio_is_playing(mus_invincibility)
	{
		audio_resume_sound(global.currentsong)
	}
	instance_destroy()
}