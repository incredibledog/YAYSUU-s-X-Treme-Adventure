/// @description Insert description here
// You can write your code in this editor
var whichplayer=scr_temphacky_closestplayer()
if touchingplayer(x, y) && whichplayer.grounded
{
	whichplayer.showarrow = true
	if (whichplayer.key_upp)
	{
		loadroom(warproom, warptype)
		obj_player.newstate = playerstates.inactive
		global.checkpoint=false
		whichplayer.sprite_index=whichplayer.playersprites[playersprite.idle]
	}
}