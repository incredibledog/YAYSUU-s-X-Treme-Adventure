/// @description Insert description here
// You can write your code in this editor
if (!donotannoymewhiletesting)
{
	if touchingplayer(x, y) && !hint && !(audio_is_playing(hintsound))
	{
		hint=true
		audio_group_stop_all(voicelines)
		audio_play_sound(snd_hint,1,false)
		audio_play_sound(hintsound,1,false)
	}
	if !touchingplayer(x, y) && hint
	{
		hint=false
	}
}