/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x, y)) && global.checkpoint=false
{
	global.checkpoint = true
	global.score+=global.scoreadd
	global.scoreadd=0
	sprite_index=spr_goalflag_transition_c
	audio_play_sound(snd_flagspin,1,false)
}