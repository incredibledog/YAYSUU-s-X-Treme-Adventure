/// @description Insert description here
// You can write your code in this editor
prevtoggled = toggled
if (touchingplayer(x, y))
{
	obj_player.showarrow = true
	if (obj_player.hsp * obj_player.image_xscale > obj_player.runspeed)
		toggled = true
	else if (obj_player.hsp * -obj_player.image_xscale < -obj_player.runspeed)
		toggled = false
	else if (global.key_upp)
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