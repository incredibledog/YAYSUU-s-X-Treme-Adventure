/// @description Insert description here
// You can write your code in this editor
instance_activate_object(obj_options_controls)
ini_open("savedata.ini")
ini_write_real("settings","controldistance",global.controldistance)
ini_close()
instance_create_depth(0,0,100,obj_mobilecontrols)
audio_play_sound(snd_confirm,1,false,global.sndvol)