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
	if(global.firstplayertouch != noone && instance_exists(global.firstplayertouch)){
		if (global.firstplayertouch.grounded && !(global.firstplayertouch.state=playerstates.hangglide))
		whichplayer = global.firstplayertouch
	}
	if(global.secondplayertouch != noone && instance_exists(global.secondplayertouch)){
		if (global.secondplayertouch.grounded && !(global.secondplayertouch.state=playerstates.hangglide))
		whichplayer = global.secondplayertouch
	}
	if (whichplayer != noone)
	{
		whichplayer.showarrow = true
		if (whichplayer.key_upp) 
		{
			whichplayer.x += 398
		}
	}
}