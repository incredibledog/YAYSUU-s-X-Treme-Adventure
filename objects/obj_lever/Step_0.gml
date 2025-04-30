/// @description Insert description here
// You can write your code in this editor
prevtoggled = toggled
if (touchingplayer(x, y))
{
	obj_player.showarrow = true
	if (obj_player.hsp * obj_player.image_xscale > obj_player.runspeed)
		toggled = true
	else if (obj_player.hsp * obj_player.image_xscale < -obj_player.runspeed)
		toggled = false
	else if (global.key_upp)
		toggled = !toggled
}

if (toggled && image_index != 4)
	image_speed = 1
else if (!toggled && image_index != 0)
	image_speed = -1
else
	image_speed = 0

if (toggled != prevtoggled)
{
	with (connectedthing)
	{
		if (object_index == obj_movingplatform_toggled || object_index == obj_movingplatform)
		{
			if (other.toggled)
				wantedside = 1
			else
				wantedside = 0
			moving = true
		}
		else if (object_index == obj_conveyor)
		{
			if (other.toggled)
				directionmodifier = other.modifiervalue
			else
				directionmodifier = 1
		}
	}
}