/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x, y-1) && obj_player.grounded)
{
	obj_player.x += conveyorspeed * directionmodifier
	playertouching = true
	obj_camera.followtimer = 60
}
else if (playertouching)
{
	if (sign(obj_player.yearnedhsp) == sign(conveyorspeed * directionmodifier) || sign(obj_player.yearnedhsp) == 0)
		obj_player.hsp += conveyorspeed * directionmodifier
	playertouching = false
}
if (touchingplayer(x, y-1))
	image_speed = conveyorspeed * directionmodifier
else
	image_speed = conveyorspeed * directionmodifier * 0.25