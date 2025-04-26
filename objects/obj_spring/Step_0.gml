/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && springtmr=0
{
	if (vbounce != 0)
		obj_player.vsp = vbounce * image_yscale
	if (hbounce != 0)
		obj_player.hsp = hbounce * image_xscale
	springtmr=30
	audio_play_sound(snd_boing,1,false)
	if (obj_player.state == playerstates.stomp)
		obj_player.newstate = playerstates.bounce
}
if springtmr>0
{
	sprite_index = bouncesprite
	springtmr--
}
else
	sprite_index = normsprite