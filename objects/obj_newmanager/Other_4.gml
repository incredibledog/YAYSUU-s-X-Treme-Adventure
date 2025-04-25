if (global.currentsong == -1)
	audio_stop_all()
else if !audio_is_playing(global.currentsong)
{
	audio_stop_all()
	audio_play_sound(global.currentsong, 1, true);
}