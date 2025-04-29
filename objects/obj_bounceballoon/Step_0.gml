/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && sprite_index == normsprite
{
	if (obj_player.state == playerstates.stomp)
	{
		if (global.char == "T")
		{
			sprite_index = popsprite
			audio_play_sound(snd_balloonpop,1,false)
		}
		else
		{
			obj_player.newstate = playerstates.bounce
			if (vbounce != 0 && obj_player.vsp*image_yscale > vbounce*image_yscale)
			{
				obj_player.vsp = vbounce * image_yscale
				sprite_index = bigbouncesprite
				audio_play_sound(snd_boing,1,false)
			}
			//if (hbounce != 0)
			//	obj_player.hsp = hbounce * image_xscale
		}
	}
	else
	{
		var intendedbounce = vbouncesmall
		if (global.key_jump || obj_player.bbox_bottom > y + 8)
			intendedbounce = vbouncejump
		
		if (obj_player.vsp*image_yscale > intendedbounce*image_yscale)
		{
			obj_player.vsp = intendedbounce * image_yscale
			sprite_index = bouncesprite
			audio_play_sound(snd_boing,1,false)
		}
		//if (hbouncesmall != 0)
		//	obj_player.hsp = hbouncesmall * image_xscale
	}
}