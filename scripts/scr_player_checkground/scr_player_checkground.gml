// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_checkground(){
	var forcecheck = 0
	if (vsp >= 0)
	{
		if (vsp == 0)
			forcecheck = grv
		grounded = place_meeting(x, y + vsp + forcecheck, obj_slope)
		slopey = grounded
		if (!grounded)
		    grounded = place_meeting(x, y + vsp + forcecheck, obj_playercollision)
		
		if (!grounded && prevgrounded)
		{
			if (place_meeting(x, (y + vsp + abs(hsp) + 1), obj_slope))
			{
				grounded = true
				slopey = true
			}
		}
		if (!grounded && !slopey && prevslopey)
			grounded = true
	}
	else
	{
		grounded = false
		slopey = false
	}
}