/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	var whichplayer = scr_temphacky_closestplayer()
	if whichplayer.vulnerable && candamage
		whichplayer.ouchies = true
	else if !whichplayer.vulnerable
	{
		instance_destroy()
		if (!small)
		{
			with (whichplayer)
				scr_player_trybounce(other.dashbouncy)
		}
	}
}