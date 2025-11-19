/// @description Insert description here
// You can write your code in this editor
if global.cutscenestate=2 || global.cutscenestate=4
{
	sprite_index=spr_electrobot_talk1
}
if global.cutscenestate=2 && !audio_is_playing(snd_elecboss2vo)
{
	global.cutscenestate=3
	if global.char="Y"
		sayvoiceline(snd_elecboss3vo_y,"Huh? What the... You must have something to do with the weird deeds goin' on around here!","purple")
	else if global.char="T"
		sayvoiceline(snd_elecboss3vo_t,"So. What in the world are YOU supposed to be?","orange")
	sprite_index=spr_electrobot_idle
}
if global.cutscenestate=4 && !audio_is_playing(snd_elecboss4vo_y) && !audio_is_playing(snd_elecboss4vo_t)
{
	global.cutscenestate=5
	if global.char="Y"
		sayvoiceline(snd_elecboss5vo_y,"Immediate elimination, huh? Well, you'll have to BEAT ME FIRST!","purple")
	else if global.char="T"
		sayvoiceline(snd_elecboss5vo_t,"Elimination by... proxy?","orange")
	sprite_index=spr_electrobot_idle
}
if global.cutscenestate=6 && global.char="T"
{
	sprite_index=spr_electrobot_talk2 // I'm never coding a cutscene like this ever again.
}
if global.cutscenestate=7
{
	if global.char="Y"
	{
		sprite_index=spr_electrobot_talk2
	}
	else if global.char="T"
	{
		sprite_index=spr_electrobot_idle
	}
	audio_sound_gain(mus_cutscene,0,2000)
}
if global.cutscenestate=7 && !audio_is_playing(snd_elecboss7vo_y) && !audio_is_playing(snd_elecboss7vo_t)
{
	global.cutscenestate=8
	audio_stop_sound(mus_cutscene)
	sprite_index=spr_electrobot_idle
	global.currentsong=mus_chillfields_boss
	audio_play_sound(global.currentsong,1,true,global.musvol)
	alarm_set(0,15)
}