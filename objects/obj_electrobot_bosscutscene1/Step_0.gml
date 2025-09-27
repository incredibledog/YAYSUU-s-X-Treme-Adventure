/// @description Insert description here
// You can write your code in this editor
if global.cutscenestate=2 || global.cutscenestate=4
{
	sprite_index=spr_electrobot_talk1
}
if global.cutscenestate=2 && !audio_is_playing(snd_elecboss2vo)
{
	global.cutscenestate=3
	sayvoiceline(snd_elecboss3vo_y,"Huh? What the... You must have something to do with the weird deeds goin' on around here!","purple")
	sprite_index=spr_electrobot_idle
}
if global.cutscenestate=4 && !audio_is_playing(snd_elecboss4vo_y)
{
	global.cutscenestate=5
	sayvoiceline(snd_elecboss5vo_y,"Immediate elimination, huh? Well, you'll have to BEAT ME FIRST!","purple")
	sprite_index=spr_electrobot_idle
}
if global.cutscenestate=7
{
	sprite_index=spr_electrobot_talk2
}
if global.cutscenestate=7 && !audio_is_playing(snd_elecboss7vo_y)
{
	global.cutscenestate=8
	audio_stop_sound(global.currentsong)
	global.currentsong=mus_chillfields_boss
	audio_play_sound(global.currentsong,1,true)
	alarm_set(0,15)
}