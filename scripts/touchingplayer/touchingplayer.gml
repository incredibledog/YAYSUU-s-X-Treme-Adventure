// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function touchingplayer(checkx, checky, background = false){
	if (global.multiplayer)
	{
		if (distance_to_object(global.mainplayer) < distance_to_object(global.otherplayer))
		{
			global.firstplayertouch = global.mainplayer
			global.secondplayertouch = global.otherplayer
		}
		else
		{
			global.firstplayertouch = global.otherplayer
			global.secondplayertouch = global.mainplayer
		}
		var iscollisioned = false
		var iscollisioned2 = false
		
		if (global.firstplayertouch.hascollision)
		{
			if (place_meeting(checkx, checky, global.firstplayertouch))
				iscollisioned = true
		}
		if (global.secondplayertouch.hascollision)
		{
			if (place_meeting(checkx, checky, global.secondplayertouch))
				iscollisioned2 = true
		}
		
		if (iscollisioned && iscollisioned2)
		{
			return true
		}
		else if (iscollisioned && !iscollisioned2)
		{
			global.secondplayertouch = noone
			return true
		}
		else if (!iscollisioned && iscollisioned2)
		{
			global.firstplayertouch = global.secondplayertouch
			global.secondplayertouch = noone
			return true
		}
		else
			return false
	}
	
	if (obj_player.hascollision && obj_player.inbackground == background)
	{
		global.firstplayertouch = global.mainplayer
		global.secondplayertouch = noone
		if (place_meeting(checkx, checky, obj_player))
			return true
		else if (global.pal)
			return place_meeting(checkx - obj_player.hsp, checky - obj_player.vsp, obj_player)
		return false
	}
	return false
}

function touchingplayerspecific(checkx, checky, whichplayer, background = false){
	var checkedplayer = whichplayer == 2 ? global.otherplayer : global.mainplayer
	
	if (checkedplayer.hascollision && checkedplayer.inbackground == background)
	{
		if (place_meeting(checkx, checky, checkedplayer))
			return true
		else if (global.pal)
			return place_meeting(checkx - checkedplayer.hsp, checky - checkedplayer.vsp, checkedplayer)
		return false
	}
	return false
}