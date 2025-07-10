// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movingobject_start(){
	var extracheck = 0
	if (vsp == 0)
		extracheck = grv
	if (vsp >= 0)
		grounded = place_meeting(x, y + vsp + extracheck, obj_collision) || place_meeting(x, y + vsp + extracheck, obj_othercollision)
	
	if (!grounded)
		vsp += grv
}