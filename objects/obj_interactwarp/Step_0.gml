/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && obj_player.grounded
{
	obj_player.showarrow = true
	if (global.key_upp)
	{
		loadroom(warproom, warptype)
		obj_player.newstate = playerstates.inactive
		if (global.char == "Y")
			obj_player.sprite_index = spr_yaysuu_idle
		else if (global.char == "T")
			obj_player.sprite_index = spr_teddy_idle
		else if (global.char == "C")
			obj_player.sprite_index = spr_cotton_idle
	}
}