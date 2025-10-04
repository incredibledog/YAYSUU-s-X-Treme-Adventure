/// @description Insert description here
// You can write your code in this editor
if (!global.inlevel)
	return

if (global.mainplayer.state != playerstates.dead)
{
	if (abs(global.mainplayer.x - x) > maxvarience || abs(global.mainplayer.y - y) > maxvarience)
	    followtimer = 60
	else if (global.mainplayer.hsp == 0 && global.mainplayer.vsp == 0 && (!dontunfocus))
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
	        focuspointx = global.mainplayer.x
	        focuspointy = global.mainplayer.y
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

if (global.mainplayer.state != playerstates.debug)
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
	if (abs(global.mainplayer.hsp) > global.mainplayer.walkspeed)
	{
		wantedspeedoffset = global.mainplayer.hsp * speedoffsetscale
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
if (global.mainplayer.state != playerstates.debug)
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