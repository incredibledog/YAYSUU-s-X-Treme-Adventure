/// @description Insert description here
// You can write your code in this editor
if (os_type != os_android || obj_chrselect_cursor.selected)
	return;
obj_chrselect_cursor.chos=chosindex
audio_play_sound(snd_move,1,false)