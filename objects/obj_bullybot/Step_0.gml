/// @description Insert description here
// You can write your code in this editor
if (image_xscale == 1)
	playerinfront = obj_player.x > x
else
	playerinfront = obj_player.x < x
	
if (touchingplayer(x,y) && (playerinfront || obj_player.vulnerable) && sprite_index != spr_bullybot_kick)
{
	movespeed = 0
	sprite_index = spr_bullybot_kick
	audio_play_sound(snd_bang, 1, false) //placeholder
	obj_player.newstate = playerstates.launched
	obj_player.vulnerable = true
	obj_player.vsp = -14
	if (!playerinfront)
		image_xscale = -image_xscale
}

event_inherited()