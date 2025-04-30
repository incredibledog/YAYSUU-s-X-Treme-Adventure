/// @description Insert description here
// You can write your code in this editor
if !obj_player.vulnerable && touchingplayer(x, y)
{
	instance_destroy()
	with (obj_player)
		scr_player_trybounce()
}
event_inherited()