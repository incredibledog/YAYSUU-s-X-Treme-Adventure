var whichplayer = scr_closestplayer()

if (!global.jumpscare && abs(obj_camera.actualcamx - x) < 400 && abs(obj_camera.actualcamy - y) < 300)
	move_towards_point(whichplayer.x,whichplayer.y,1)
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
if (touchingplayer(x, y)) && !global.jumpscare
{
	if (!global.inv)
	{
		global.firstplayertouch.ouchies = true
		global.firstplayertouch.deathies = true
		if (global.secondplayertouch != noone)
		{
			global.secondplayertouch.ouchies = true
			global.secondplayertouch.deathies = true
		}
		if global.firstplayertouch == global.mainplayer
		{
			global.jumpscare = true
			global.injumpscare = true;
		}
	}
}