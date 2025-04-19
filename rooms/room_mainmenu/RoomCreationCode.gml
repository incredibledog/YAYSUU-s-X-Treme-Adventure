if !audio_is_playing(mus_mainmenu)
{
	audio_play_sound(mus_mainmenu,1,true)
}
audio_stop_sound(mus_chrselect)
window_set_caption("Main Menu")
global.char="Y"