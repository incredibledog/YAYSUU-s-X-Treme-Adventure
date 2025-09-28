/// @description Insert description here
// You can write your code in this editor
movingobject_start()
movingobject_end()
if !obj_player.vulnerable && touchingplayer(x, y)
{
	instance_destroy()
	with (obj_player)
		scr_player_trybounce(false)
}