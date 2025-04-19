/// @description Insert description here
// You can write your code in this editor
if st=0 && started=false
{
	delay=room_speed
	started=true
	audio_stop_sound(mus_title)
	image_speed=2
	audio_play_sound(snd_confirm,1,false)
}