/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	global.firstplayertouch.showarrow = true
	if (global.firstplayertouch.key_upp)
	{
		loadroom(warproom, warptype)
		global.firstplayertouch.newstate = playerstates.inactive
		global.checkpoint=false
		global.firstplayertouch.sprite_index=global.firstplayertouch.playersprites[playersprite.idle]
	}
}