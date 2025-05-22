/// @description Insert description here
// You can write your code in this editor
st=0
started=false
delay=0
audio_pause_sound(global.currentsong)
instance_deactivate_all(true)
instance_activate_object(obj_newmanager)
instance_activate_object(obj_fadeblack)
audio_play_sound(snd_nicetry,0,false)
draw_set_font(global.subtitlefont)
controllermessage=choose("No controller is connected.","Hey, come on!","Maybe it was an accident...?","Up and at 'em!","Take a breather...","Woah, you got too excited!","When you're ready...","Rage much?","MISINPUT IT WAS A MISINPUT!","Fail")
if global.inputtype=3
{
	sprite_index=spr_pressstart_m
}
else
{
	sprite_index=spr_pressstart
}