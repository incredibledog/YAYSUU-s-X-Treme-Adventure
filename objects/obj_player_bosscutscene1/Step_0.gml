/// @description Insert description here
// You can write your code in this editor
if global.cutscenestate=0
{
	global.cutscenestate=1
}
if global.cutscenestate=1 && talking=false
{
	audio_play_sound(snd_bossintro1_line1_y,1,false)
	talking=true
}
if global.cutscenestate=3 && talking=false
{
	audio_play_sound(snd_bossintro1_line3_y,1,false)
	talking=true
}
if global.cutscenestate=1 && !audio_is_playing(snd_bossintro1_line1_y) && talking=true
{
	global.cutscenestate=2
	talking=false
}
if global.cutscenestate=3 && !audio_is_playing(snd_bossintro1_line3_y) && talking=true
{
	global.cutscenestate=4
	talking=false
}
if global.cutscenestate=1 || global.cutscenestate=3
{
	sprite_index=spr_yaysuu_talk_confused
}
if global.cutscenestate=2 || global.cutscenestate=4
{
	sprite_index=spr_yaysuu_idle
}
if global.cutscenestate=5
{
	instance_destroy()
	instance_create_depth(x,y,depth,obj_player)
}