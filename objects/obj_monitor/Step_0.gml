/// @description Insert description here
// You can write your code in this editor
movingobject_start()
movingobject_end()
var whichplayer=scr_temphacky_closestplayer()
if !whichplayer.vulnerable && touchingplayer(x, y)
{
	instance_destroy()
	with (whichplayer)
		scr_player_trybounce(false)
}