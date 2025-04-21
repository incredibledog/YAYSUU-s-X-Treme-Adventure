if (!global.jumpscare && abs(obj_player.x - x) < 400 && abs(obj_player.y - y) < 300)
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
if (place_meeting(x,y+obj_player.vsp,obj_player)) && !global.jumpscare
{
	if (obj_player.vulnerable)
	{
		global.jumpscare=true
		global.injumpscare = true;
		audio_play_sound(snd_jumpscare,1,false)
		obj_player.state = playerstates.inactive
	}
	else
	{
		hsp = obj_player.hsp
		vsp = obj_player.vsp
		obj_player.hsp = 0
		obj_player.vsp = 0
	}
}
else if global.jumpscare && !audio_is_playing(snd_jumpscare)
{
	obj_player.ouchies = true
	global.jumpscare = false
}