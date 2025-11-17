/// @description Insert description here
// You can write your code in this editor
if (!global.mobile || obj_chrselect_cursor.selected)
	return;
obj_chrselect_cursor.chos=chosindex
audio_play_sound(snd_move,1,false,global.sndvol)