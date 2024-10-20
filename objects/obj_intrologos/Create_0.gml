/// @description Insert description here
// You can write your code in this editor
if room=room_idlogo
{
	sprite_index=spr_idlogo
	jingle=mus_idlogo
	global.nextroom=room_titlescreen
}
if room=room_sagelogo
{
	sprite_index=spr_sage24bg
	jingle=mus_sagelogo
	global.nextroom=room_titlescreen
}
audio_play_sound(jingle,1,false)