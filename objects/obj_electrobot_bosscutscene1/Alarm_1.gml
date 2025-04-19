/// @description Insert description here
// You can write your code in this editor
instance_destroy()
instance_create_depth(obj_player_bosscutscene1.x,obj_player_bosscutscene1.y,depth,obj_player)
instance_create_layer(0,0,"gui",obj_mobilecontrols)
instance_destroy(obj_player_bosscutscene1)
instance_create_depth(x,y,depth,obj_electrobot)
audio_group_stop_all(voicelines)
if global.voicelines=true
{
	audio_play_sound(snd_boss1vo_y,1,false,2.5)
}