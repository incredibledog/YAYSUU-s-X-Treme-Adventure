/// @description Insert description here
// You can write your code in this editor
instance_destroy()
obj_player.state = playerstates.normal
obj_player.newstate = playerstates.normal
obj_electrobot.state = electrobotstates.idle
instance_create_layer(0,0,"gui",obj_mobilecontrols)
instance_destroy(obj_player_bosscutscene1)
audio_group_stop_all(voicelines)
if global.voicelines=true
{
	audio_play_sound(snd_boss1vo_y,1,false,2.5)
}