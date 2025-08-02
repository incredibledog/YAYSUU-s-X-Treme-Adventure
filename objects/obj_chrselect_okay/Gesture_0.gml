/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=false
{
	if (os_type != os_android)
		return;
	obj_chrselect_cursor.delay=120
	obj_chrselect_cursor.selected=true
	if (chos == 1)
	{
		global.char="Y"
		audio_play_sound(snd_yaysuuselect,1,false)
	}
	else if (chos == 1.5) // JUST SO NOTHING BREAKS...
	{
		global.char="C"
		audio_play_sound(snd_cottonselect,1,false)
	}
	else
	{
		global.char="T"
		audio_play_sound(snd_teddyselect,1,false)
	}
	audio_play_sound(snd_confirm,1,false)
}