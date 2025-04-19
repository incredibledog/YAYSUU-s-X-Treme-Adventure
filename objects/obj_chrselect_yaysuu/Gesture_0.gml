/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=false
{
	global.char="Y"
	obj_chrselect_cursor.delay=room_speed*2
	obj_chrselect_cursor.selected=true
	audio_play_sound(snd_confirm,1,false)
	audio_play_sound(snd_yaysuuselect,1,false)
}