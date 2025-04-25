/// @description Insert description here
// You can write your code in this editor
if (os_type != os_android || obj_chrselect_cursor.selected)
	return;
global.char="Y"
obj_chrselect_cursor.delay=120
obj_chrselect_cursor.selected=true
audio_play_sound(snd_confirm,1,false)
audio_play_sound(snd_yaysuuselect,1,false)