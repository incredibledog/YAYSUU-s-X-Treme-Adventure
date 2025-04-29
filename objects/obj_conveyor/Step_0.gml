/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x, y-1) && obj_player.grounded)
{
	obj_player.x += conveyorspeed
	playertouching = true
	obj_camera.followtimer = 60
}
else if (playertouching)
{
	if (sign(obj_player.yearnedhsp) == sign(conveyorspeed))
		obj_player.hsp += conveyorspeed
	playertouching = false
}
if (touchingplayer(x, y-1))
	image_speed = conveyorspeed
else
	image_speed = conveyorspeed * 0.25