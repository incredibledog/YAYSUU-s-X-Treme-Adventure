if (!global.jumpscare)
	move_towards_point(obj_player.x,obj_player.y,1)
if (place_meeting(x,y+obj_player.vsp,obj_player)) && !global.jumpscare && !global.inv && obj_player.hurtt == 0
{
	global.jumpscare=true
	global.injumpscare = true;
	audio_play_sound(snd_jumpscare,1,false)
	obj_player.state = playerstates.inactive
}
else if global.jumpscare && !audio_is_playing(snd_jumpscare)
{
	obj_player.ouchies = true
	global.jumpscare = false
}