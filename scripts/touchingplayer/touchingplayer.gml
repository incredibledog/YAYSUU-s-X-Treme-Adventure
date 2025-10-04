// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function touchingplayer(checkx, checky, background = false){
	if (global.multiplayer)
	{
		if (global.mainplayer.hascollision)
		{
			if (place_meeting(checkx, checky, global.mainplayer))
				return true
		}
		if (global.otherplayer.hascollision)
		{
			if (place_meeting(checkx, checky, global.otherplayer))
				return true
		}
		return false
	}
	
	if (obj_player.hascollision && obj_player.inbackground == background)
	{
		if (place_meeting(checkx, checky, obj_player))
			return true
		else if (global.pal)
			return place_meeting(checkx - obj_player.hsp, checky - obj_player.vsp, obj_player)
		return false
	}
	return false
}