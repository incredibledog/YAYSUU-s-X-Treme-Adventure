/// @description Insert description here
// You can write your code in this editor
if global.inlevel && obj_player.state != playerstates.dead && obj_player.state != playerstates.dead
{
	if (abs(obj_player.x - x) > maxvarience || abs(obj_player.y - y) > maxvarience)
	    followtimer = 60
	else if (obj_player.hsp == 0 && obj_player.vsp == 0 && (!dontunfocus))
	    followtimer--
	if (focusonpointstored != focusonpoint)
	{
	    focusonpointstored = focusonpoint
	    lerpy = 0
	}
	if ((followtimer > 0 || focusonpoint) && (!freezecamera))
	{
	    if (!focusonpoint)
	    {
	        focuspointx = obj_player.x
	        focuspointy = obj_player.y
	    }
		if (lerpy >= 1)
	    {
		    x = focuspointx
			y = focuspointy
	    }
		else
	    {
		    lerpy += lerpyincrease
			x = x * (1 - lerpy) + focuspointx * lerpy
	        y = y * (1 - lerpy) + focuspointy * lerpy
		}
	}
	else
	{
	    followtimer = 0
	    lerpy = 0
	}
}

if (obj_player.state != playerstates.debug)
{
	x = clamp(x, 320, (room_width - 320))
	y = clamp(y, 240, (room_height - 240))
}

actualcamx = x
actualcamy = y

if (!focusonpoint)
{
	actualcamy += voffset
	
	var wantedspeedoffset = 0
	if (abs(obj_player.hsp) > obj_player.walkspeed)
	{
		wantedspeedoffset = obj_player.hsp * speedoffsetscale
	}
	
	var speedoffsetspeed
	if (abs(wantedspeedoffset) > speedoffset * sign(wantedspeedoffset))
		speedoffsetspeed = speedoffsetspeedincrease
	else
		speedoffsetspeed = speedoffsetspeeddecrease
	
	if (abs(wantedspeedoffset - speedoffset) < speedoffsetspeed)
		speedoffset = wantedspeedoffset
	else
		speedoffset += sign(wantedspeedoffset - speedoffset) * speedoffsetspeed
	actualcamx += speedoffset
}

if global.screenshake
	vwobble = (-vwobble)
else
	vwobble=0
if vshakeoffset > 0
	vshakeoffset--
var shakey = vshakeoffset * vwobble
actualcamx = round(actualcamx)
actualcamy = round(actualcamy)
if (obj_player.state != playerstates.debug)
{
	actualcamx = clamp(actualcamx, 320, (room_width - 320))
	actualcamy = clamp(actualcamy, 240, (room_height - 240))
}

deltax -= actualcamx
deltax *= -1
deltay -= actualcamy
deltay *= -1

gamepad_set_vibration(0, -vwobble * vshakeoffset * 0.02, vwobble * vshakeoffset * 0.02)
camera_set_view_pos(view_camera[0], actualcamx - 320, (actualcamy - 240) + shakey)