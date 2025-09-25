/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && obj_player.grounded
{
	obj_player.showarrow = true
	if (global.key_upp)
	{
		obj_player.newstate = playerstates.hangglide
		obj_player.hangglidedir = obj_player.facingdirection
		instance_destroy()
	}
}