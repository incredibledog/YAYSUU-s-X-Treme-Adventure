function amiwalled(hsp){
	return (place_meeting((x + hsp), y, obj_collision) && (!(place_meeting((x + hsp), y, obj_slope))))
}