/// @description Insert description here
// You can write your code in this editor
if (moving)
{
	if (!audio_is_playing(movingsound))
		movingsound = audio_play_sound(snd_movingplatform_move, 1, true)
	sprite_index = spr_movingplatform_active
	
	if (wantedside > position)
		position += movespeed
	else
		position -= movespeed
	position = clamp(position, 0, 1)
	if (wantedside == position)
	{
		moving = false
		audio_play_sound(snd_movingplatform_change, 1, false)
	}
	var smoothedpos = (sin(pi*(position-0.5))*0.5)+0.5 //i love math.
	var oldx = x
	var oldy = intendedy
	x = round(lerp(firstpointx, otherpointx, smoothedpos))
	intendedy = round(lerp(firstpointy, otherpointy, smoothedpos))
	
	if (touchingplayer(oldx, oldy-1) && obj_player.grounded)
	{
		obj_player.x += x-oldx
		obj_player.y += intendedy-oldy
		playertouching = true
		obj_camera.followtimer = 60
	}
	else if (playertouching)
	{
		obj_player.hsp += x-oldx
		if (intendedy-oldy < 0) //making the player's jump *smaller* sounds like bad game design
			obj_player.vsp += intendedy-oldy
		playertouching = false
	}
}
else
{
	if (audio_is_playing(movingsound))
		audio_stop_sound(movingsound)
	sprite_index = spr_movingplatform
	
	if (touchingplayer(x, intendedy-1) && obj_player.grounded)
	{
		if (!playertouching)
		{
			if (wantedside == 0)
				wantedside = 1
			else
				wantedside = 0
			moving = true
			audio_play_sound(snd_movingplatform_change, 1, false)
		}
		playertouching = true
	}
	else
		playertouching = false
}
event_inherited()