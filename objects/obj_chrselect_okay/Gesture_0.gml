/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=false
{
	if (global.inputtype!=3)
		return;
	obj_chrselect_cursor.delay=120
	obj_chrselect_cursor.selected=true
	if (obj_chrselect_cursor.chos == 1)
	{
		global.char="Y"
		audio_play_sound(snd_yaysuuselect,1,false)
		with (global.mainplayer)
			scr_setupcharacter("Y", 0)
	}
	else if (obj_chrselect_cursor.chos == 2)
	{
		global.char="T"
		audio_play_sound(snd_teddyselect,1,false)
		with (global.mainplayer)
			scr_setupcharacter("T", 0)
	}
	audio_play_sound(snd_confirm,1,false)
}