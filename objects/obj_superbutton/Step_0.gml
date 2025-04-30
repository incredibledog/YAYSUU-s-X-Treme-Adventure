/// @description Insert description here
// You can write your code in this editor
prevtoggled = toggled
if touchingplayer(x, y)
	toggled = true
else if place_meeting(x, y, obj_movingobject)
	toggled = true
else
	toggled = false

if (toggled)
	image_index = 1
else
	image_index = 0

if (toggled != prevtoggled)
	scr_setlogicobject(connectedthing, toggled, modifiervalue)