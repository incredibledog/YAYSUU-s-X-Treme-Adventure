/// @description Insert description here
// You can write your code in this editor
if st>0
{
	st-=1
}
if st=0
{
	image_alpha=1
}
if global.key_start && st=0 && started=false
{
	delay=room_speed
	started=true
	audio_stop_sound(mus_title)
	image_speed=2
	audio_play_sound(snd_confirm,1,false)
}
if global.key_dash && st=0 && started=false
{
	started=true
	audio_stop_sound(mus_title)
	image_alpha=0
	audio_play_sound(snd_nahnvm,1,false)
	global.nextroom=room_idlogo
	obj_fadeblack.fading=true
}
if delay=0 && started=true
{
	obj_fadeblack.fading=true
}
if delay>0 && started=true
{
	delay--
}
