/// @description Insert description here
// You can write your code in this editor
if obj_player.state=playerstates.hangglide && !global.multiplayer
{
	image_alpha=0.5
	return;
}
else {
	image_alpha=1
}
if touchingplayer(x, y)
{
	var whichplayer = noone
	if (global.firstplayertouch.grounded && !(global.firstplayertouch.state=playerstates.hangglide))
		whichplayer = global.firstplayertouch
	else if (global.secondplayertouch.grounded && !(global.secondplayertouch.state=playerstates.hangglide))
		whichplayer = global.secondplayertouch
	if (whichplayer != noone)
	{
		whichplayer.showarrow = true
		if (whichplayer.key_upp) 
		{
			whichplayer.newstate = playerstates.hangglide
			whichplayer.hangglidedir = whichplayer.facingdirection
		}
	}
}