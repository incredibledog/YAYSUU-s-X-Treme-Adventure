/// @description Insert description here
// You can write your code in this editor
event_inherited()
if (wantedside != position)
	moving = true
if (moving)
{
	if (wantedside > position)
		position += movespeed
	else
		position -= movespeed
	position = clamp(position, 0, 1)
	if (wantedside == position)
		moving = false
	
	sprite_index = spr_movingplatform_active
	var smoothedpos = (sin(pi*(position-0.5))*0.5)+0.5 //i love math.
	var oldx = x
	x = round(lerp(firstpoint, otherpoint, smoothedpos))
	
	if (touchingplayer(x, y-1) && obj_player.grounded)
	{
		obj_player.x += x-oldx
		playertouching = true
	}
	else if (playertouching)
	{
		obj_player.hsp += x-oldx
		playertouching = false
	}
}
else
{
	sprite_index = spr_movingplatform
	if (touchingplayer(x, y-1) && obj_player.grounded)
	{
		if (!playertouching)
		{
			if (wantedside == 0)
				wantedside = 1
			else
				wantedside = 0
		}
		playertouching = true
	}
	else
		playertouching = false
}