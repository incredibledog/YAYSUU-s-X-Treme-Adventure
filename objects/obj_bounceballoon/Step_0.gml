/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && sprite_index == normsprite
{
	var whichplayer = global.firstplayertouch
	if (global.secondplayertouch != noone && irandom(1) == 0) //too complicated 4 me lel
		whichplayer = global.secondplayertouch
	var whichchar = whichplayer.isotherplayer ? global.p2char : global.char
	if (whichplayer.state == playerstates.stomp)
	{
		if (whichchar == "T")
		{
			sprite_index = popsprite
			audio_play_sound(snd_balloonpop,1,false,global.sndvol)
		}
		else
		{
			whichplayer.newstate = playerstates.bounce
			if (vbounce != 0 && obj_player.vsp*image_yscale > vbounce*image_yscale)
			{
				whichplayer.vsp = vbounce * image_yscale
				sprite_index = bigbouncesprite
				audio_play_sound(snd_boing,1,false,global.sndvol)
			}
			//if (hbounce != 0)
			//	obj_player.hsp = hbounce * image_xscale
		}
	}
	else
	{
		var intendedbounce = vbouncesmall
		if (whichplayer.key_jump || whichplayer.bbox_bottom > y + 8)
			intendedbounce = vbouncejump
		
		if (whichplayer.vsp*image_yscale > intendedbounce*image_yscale)
		{
			whichplayer.vsp = intendedbounce * image_yscale
			sprite_index = bouncesprite
			audio_play_sound(snd_boing,1,false,global.sndvol)
			if (whichchar == "T")
				whichplayer.djump = false;
		}
		//if (hbouncesmall != 0)
		//	obj_player.hsp = hbouncesmall * image_xscale
	}
}