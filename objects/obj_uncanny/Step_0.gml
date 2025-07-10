if (!global.jumpscare && abs(obj_camera.actualcamx - x) < 400 && abs(obj_camera.actualcamy - y) < 300)
	move_towards_point(obj_player.x,obj_player.y,1)
else
	speed = 0
if (hsp != 0)
{
	x += hsp
	hsp -= sign(hsp)
}
if (vsp != 0)
{
	y += vsp
	hsp -= sign(vsp)
}
if (place_meeting(x,y,obj_player)) && !global.jumpscare
{
	if (global.inv=false)
	{
		global.jumpscare=true
		global.injumpscare = true;
		audio_play_sound(snd_jumpscare,1,false)
		audio_stop_sound(global.currentsong)
	}
}
else if global.jumpscare && !audio_is_playing(snd_jumpscare)
{
	obj_player.ouchies = true
	obj_player.deathies = true
	global.jumpscare = false
}