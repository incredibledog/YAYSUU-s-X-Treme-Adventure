/// @description Insert description here
// You can write your code in this editor
if st>0
	st--
else
	image_alpha=1

if (started)
{
	if delay>0
		delay--
	else if (!obj_fadeblack.fading)
		loadroom(room_mainmenu, loadtype.menu)
}
else
{
	if global.key_start || (global.key_jumpp && st=0)
	{
		delay=60
		started=true
		audio_stop_sound(mus_title)
		audio_play_sound(snd_confirm,1,false)
		image_speed=2
	}
}

if (keyboard_string != "" && keyboard_string != "2" && keyboard_string != "27" && keyboard_string != "276")
{
	if (keyboard_string == "2763")
		loadroom(room_imagetest, loadtype.menu)
	keyboard_string = ""
}