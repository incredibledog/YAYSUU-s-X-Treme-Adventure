/// @description Insert description here
// You can write your code in this editor
if graceperiod>0
{
	graceperiod--
	return
}
if (global.inputtype=2 || global.inputtype=0) || keyboard_check_pressed(vk_f7)
{
	instance_destroy()
	return
}
if keyboard_check_pressed(vk_f5)
{
	global.controldistance+=10
	audio_play_sound(snd_move,1,false,global.sndvol)
}
else if keyboard_check_pressed(vk_f6)
{
	global.controldistance-=10
	audio_play_sound(snd_move,1,false,global.sndvol)
}