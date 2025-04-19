audio_stop_all()
window_set_caption("Choose YOUR Buddy!")
if global.trial=false
{
	global.nextroom=room_intro
}
else {
	global.nextroom=room_trialmenu
}
global.hubstart=false
audio_play_sound(mus_chrselect,1,true)