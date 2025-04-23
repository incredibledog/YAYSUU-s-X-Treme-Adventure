/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	if obj_player.vulnerable
		obj_player.ouchies = true
	else
	{
		instance_destroy()
		if (!small)
		{
			with (obj_player)
				scr_player_trybounce()
		}
	}
}