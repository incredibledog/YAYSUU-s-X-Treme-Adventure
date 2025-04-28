/// @description Insert description here
// You can write your code in this editor
if (os_type != os_android || obj_chrselect_cursor.selected)
	return;
obj_chrselect_cursor.chos=chosindex
global.char=charletter
obj_chrselect_cursor.delay=120
obj_chrselect_cursor.selected=true
audio_play_sound(snd_confirm,1,false)
audio_play_sound(selectsound,1,false)