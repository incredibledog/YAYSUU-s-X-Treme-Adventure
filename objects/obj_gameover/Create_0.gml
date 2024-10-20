/// @description Insert description here
// You can write your code in this editor
if global.char="Y"
{
	sprite_index=spr_yaysuugameover
}
else if global.char="T"
{
	sprite_index=spr_teddygameover
}
gameoversong=mus_gameover_y
audio_play_sound(gameoversong,1,false)