/// @description Insert description here
// You can write your code in this editor
if (touchingplayerspecific(x, y-1, 1) && global.mainplayer.grounded)
{
	global.mainplayer.x += conveyorspeed * directionmodifier
	playertouching = true
	obj_camera.followtimer = 60
}
else if (playertouching)
{
	if (sign(global.mainplayer.yearnedhsp) == sign(conveyorspeed * directionmodifier) || sign(global.mainplayer.yearnedhsp) == 0)
		global.mainplayer.hsp += conveyorspeed * directionmodifier
	playertouching = false
}
if (global.multiplayer)
{
	if (touchingplayerspecific(x, y-1, 2) && global.otherplayer.grounded)
	{
		global.otherplayer.x += conveyorspeed * directionmodifier
		player2touching = true
		obj_camera.followtimer = 60
	}
	else if (player2touching)
	{
		if (sign(global.otherplayer.yearnedhsp) == sign(conveyorspeed * directionmodifier) || sign(global.otherplayer.yearnedhsp) == 0)
			global.otherplayer.hsp += conveyorspeed * directionmodifier
		player2touching = false
	}
}

if (touchingplayer(x, y-1))
	image_speed = conveyorspeed * directionmodifier * global.animationscale
else
	image_speed = conveyorspeed * directionmodifier * 0.25 * global.animationscale