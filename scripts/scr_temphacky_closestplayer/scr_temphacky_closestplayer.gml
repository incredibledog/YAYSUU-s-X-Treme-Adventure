function scr_temphacky_closestplayer(){
	if (global.multiplayer)
	{
		if (distance_to_object(global.mainplayer) < distance_to_object(global.otherplayer))
			return global.mainplayer
		else
			return global.otherplayer
	}
	else
		return global.mainplayer
}