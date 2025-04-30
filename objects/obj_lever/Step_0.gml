/// @description Insert description here
// You can write your code in this editor
prevtoggled = toggled
if (touchingplayer(x, y))
{
	if (obj_player.hsp > 2)
		toggled = true
	else if (obj_player.hsp < -2)
		toggled = false
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
		if (object_index == obj_movingplatform_toggled)
		{
			if (other.toggled)
				wantedside = 1
			else
				wantedside = 0
			moving = true
		}
	}
}