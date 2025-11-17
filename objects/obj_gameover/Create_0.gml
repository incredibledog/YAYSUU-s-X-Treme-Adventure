/// @description Insert description here
// You can write your code in this editor
if global.char="Y"
{
	sprite_index=spr_yaysuugameover
	gameoversong=mus_gameover_y
}
else if global.char="T"
{
	sprite_index=spr_teddygameover
	gameoversong=mus_gameover_t
}
else if global.char="T"
{
	sprite_index=spr_cottongameover
	gameoversong=mus_gameover_c
}
image_alpha=0
audio_play_sound(gameoversong,1,false,global.sndvol)