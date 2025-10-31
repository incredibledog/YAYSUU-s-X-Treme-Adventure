/// @description Insert description here
// You can write your code in this editor
instance_destroy()
obj_player.image_angle = 0
obj_player.state = playerstates.normal
obj_player.newstate = playerstates.normal
obj_player.image_alpha = 1
obj_player.idletime = 0
//obj_electrobot.state = electrobotstates.idle
//obj_electrobot.image_alpha = 1
instance_destroy(obj_player_bosscutscene1)
audio_group_stop_all(voicelines)