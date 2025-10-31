/// @description Insert description here
// You can write your code in this editor
if global.cutscenestate=1 && !audio_is_playing(snd_elecboss7vo_y)
{
	global.cutscenestate=8
	sprite_index=spr_electrobot_idle
	global.currentsong=mus_chillfields_boss
	audio_play_sound(global.currentsong,1,true)
	alarm_set(0,15)
}