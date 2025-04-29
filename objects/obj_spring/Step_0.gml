/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && sprite_index == normsprite
{
	if (vbounce != 0)
		obj_player.vsp = vbounce * image_yscale
	if (hbounce != 0)
		obj_player.hsp = hbounce * image_xscale
	audio_play_sound(snd_boing,1,false)
	if (obj_player.state == playerstates.stomp)
		obj_player.newstate = playerstates.bounce
	sprite_index = bouncesprite
}