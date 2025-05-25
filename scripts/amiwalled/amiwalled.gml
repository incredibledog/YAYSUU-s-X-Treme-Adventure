function amiwalled(hsp){
	if (slopey)
		return false
	return place_meeting((x + hsp), y, obj_playercollision) // && !place_meeting((x + hsp), y, obj_slope)
}