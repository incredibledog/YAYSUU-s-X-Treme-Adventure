/// @description Insert description here
// You can write your code in this editor
prevtoggled = toggled
if (touchingplayer(x, y))
{
	global.firstplayertouch.showarrow = true
	if (global.firstplayertouch.hsp * global.firstplayertouch.image_xscale > global.firstplayertouch.runspeed)
		toggled = true
	else if (global.firstplayertouch.hsp * -global.firstplayertouch.image_xscale < -global.firstplayertouch.runspeed)
		toggled = false
	else if (global.firstplayertouch.key_upp)
		toggled = !toggled
}

if (toggled && round(image_index != 4))
	image_speed = 1
else if (!toggled && round(image_index != 0))
	image_speed = -1
else
	image_speed = 0

if (toggled != prevtoggled)
	scr_setlogicobject(connectedthing, toggled, modifiervalue)