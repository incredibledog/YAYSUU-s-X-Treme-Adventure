/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && springtmr=0
{
	obj_player.vsp = -14 * image_yscale
	obj_player.hsp = 25 * image_xscale
	springtmr=30
	audio_play_sound(snd_boing,1,false)
	if (obj_player.state == playerstates.stomp)
		obj_player.newstate = playerstates.normal
}
if springtmr>0
{
	sprite_index=spr_diagspringanim
	springtmr--
}
else
	sprite_index=spr_diagspring