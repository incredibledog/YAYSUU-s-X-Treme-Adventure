/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && sprite_index=spr_goalflag_a
{
	sprite_index=spr_goalflag_transition_c
	audio_play_sound(snd_flagspin,1,false,global.sndvol)
}