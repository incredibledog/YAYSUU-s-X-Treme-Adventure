/// @description Insert description here
// You can write your code in this editor
event_inherited();
if global.char="T"
	sprite_index=spr_itemlife_t
else
	sprite_index=spr_itemlife_y
global.lives+=1
audio_pause_sound(global.currentsong)
audio_play_sound(snd_extralife,1,false)