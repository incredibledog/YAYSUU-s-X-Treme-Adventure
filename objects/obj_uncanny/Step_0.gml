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
var whichplayer = scr_temphacky_closestplayer()
if (place_meeting(x,y,obj_player)) && !global.jumpscare
{
	if (global.inv=false)
	{
		whichplayer.ouchies = true
		whichplayer.deathies = true
		if whichplayer=global.mainplayer
		{
			global.jumpscare=true
			global.injumpscare = true;
		}
	}
}