/// @description Insert description here
// You can write your code in this editor
movingobject_start()


if (touchingplayer(x,y) && sprite_index != spr_bullybot_kick)
{
	var boomkickem = noone
	if (image_xscale == 1)
		playerinfront = global.firstplayertouch.x > x
	else
		playerinfront = global.firstplayertouch.x < x
	if ((playerinfront || global.firstplayertouch.vulnerable))
		boomkickem = global.firstplayertouch
	else if (global.secondplayertouch != noone)
	{
		if (image_xscale == 1)
			playerinfront = global.secondplayertouch.x > x
		else
			playerinfront = global.secondplayertouch.x < x
		if ((playerinfront || global.secondplayertouch.vulnerable))
			boomkickem = global.secondplayertouch
	}
	if (boomkickem != noone)
	{
		movespeed = 0
		sprite_index = spr_bullybot_kick
		audio_play_sound(snd_bang, 1, false) //placeholder
		boomkickem.newstate = playerstates.launched
		boomkickem.vulnerable = true
		boomkickem.vsp = -14
		scr_shake(5, false)
		if (!playerinfront)
			image_xscale = -image_xscale
	}
}

movingobject_end()
event_inherited()