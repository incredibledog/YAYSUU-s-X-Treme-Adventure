/// @description Insert description here
// You can write your code in this editor
if global.cutscenestate=0
{
	global.cutscenestate=1
}
if global.cutscenestate=2 && talking=false
{
	audio_play_sound(snd_bossintro1_line2,1,false)
	talking=true
}
if global.cutscenestate=4 && talking=false
{
	audio_play_sound(snd_bossintro1_line4,1,false)
	talking=true
}
if global.cutscenestate=2 && !audio_is_playing(snd_bossintro1_line2) && talking=true
{
	global.cutscenestate=3
	talking=false
}
if (global.cutscenestate=4 && !audio_is_playing(snd_bossintro1_line4) && talking=true) || ((keyboard_check_pressed(ord("C"))) || (gamepad_button_check_pressed(0, gp_face3)))
{
	global.cutscenestate=5
	talking=false
}
if global.cutscenestate=2
{
	sprite_index=spr_electrobot_talk1
}
if global.cutscenestate=4
{
	sprite_index=spr_electrobot_talk2
}
if global.cutscenestate=1 || global.cutscenestate=3
{
	sprite_index=spr_electrobot_idle
}
if global.cutscenestate=5
{
	instance_destroy()
	audio_stop_sound(snd_bossintro1_line1_y)
	audio_stop_sound(snd_bossintro1_line2)
	audio_stop_sound(snd_bossintro1_line3_y)
	audio_stop_sound(snd_bossintro1_line4)
	instance_create_depth(x,y,depth,obj_electrobot)
}