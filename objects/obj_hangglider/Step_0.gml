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
if touchingplayer(x, y) && obj_player.grounded && !(obj_player.state=playerstates.hangglide)
{
	var whichplayer = scr_temphacky_closestplayer()
	whichplayer.showarrow = true
	if (whichplayer.key_upp) 
	{
		whichplayer.newstate = playerstates.hangglide
		whichplayer.hangglidedir = whichplayer.facingdirection
	}
}