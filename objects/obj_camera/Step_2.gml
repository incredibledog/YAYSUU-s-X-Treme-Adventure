/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) && obj_player.dieded = false
{
	if (abs(obj_player.x - x) > maxvarience || abs(obj_player.y - y) > maxvarience || obj_player.taunting)
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
x = clamp(x, 320, (room_width - 320))
y = clamp(y, 240, (room_height - 240))
if global.screenshake
	vwobble = (-vwobble)
else
	vwobble=0
if vshakeoffset=0
{
	gamepad_set_vibration(0,0,0)
}
else
{
	vshakeoffset-=1
	gamepad_set_vibration(0,(vwobble=-1),(vwobble=1))
}

camera_set_view_pos(view_camera[0], round(x - 320), round(y - 240 + voffset + (vshakeoffset * vwobble)))