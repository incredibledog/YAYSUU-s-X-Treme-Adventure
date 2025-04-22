function amiwalled(hsp){
	return (place_meeting((x + hsp), y, obj_playercollision) && (!(place_meeting((x + hsp), y, obj_slope))))
}