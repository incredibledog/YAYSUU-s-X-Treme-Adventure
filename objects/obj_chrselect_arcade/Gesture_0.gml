/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=false
{
	if (global.inputtype!=3)
		return;
	global.arcade=!global.arcade
	audio_play_sound(snd_move,1,false,global.sndvol)
}