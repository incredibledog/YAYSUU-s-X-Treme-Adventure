/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && obj_player.grounded
{
	obj_player.showarrow = true
	if (global.key_upp)
		loadroom(warproom, warptype)
}