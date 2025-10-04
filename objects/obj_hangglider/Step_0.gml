/// @description Insert description here
// You can write your code in this editor
if obj_player.state=playerstates.hangglide
{
	image_alpha=0.5
	return;
}
else {
	image_alpha=1
}
if touchingplayer(x, y) && obj_player.grounded
{
	obj_player.showarrow = true
	if (obj_player.key_upp)
	{
		obj_player.newstate = playerstates.hangglide
		obj_player.hangglidedir = obj_player.facingdirection
	}
}