/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	var placate = global.firstplayertouch
	var bounceboth = 1
	if (global.secondplayertouch != noone)
		bounceboth = 2
	repeat(bounceboth)
	{
		if (vbounce != 0)
			placate.vsp = vbounce * image_yscale
		if (hbounce != 0)
			placate.hsp = hbounce * image_xscale
		audio_play_sound(snd_boing,1,false,global.sndvol)
		if (placate.state == playerstates.stomp)
			placate.newstate = playerstates.bounce
		sprite_index = bouncesprite
		image_index = 0
		placate.grounded = false
		placate.slopey = false
		placate.prevgrounded = false
		placate.prevslopey = false
		if (global.secondplayertouch != noone)
			placate = global.secondplayertouch
	}
}