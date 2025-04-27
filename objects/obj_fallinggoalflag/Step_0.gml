/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (grounded)
	event_inherited();
else
{
	vsp += grv
	if (place_meeting(x, y + vsp, obj_collision))
	{
		var loopprevent = 0
	    while (!place_meeting(x, (y + 0.1), obj_collision) && loopprevent < 1000)
		{
	        y += 0.1
		    loopprevent++
	    }
		vsp = 0
		grounded = true
	}
	y += vsp
}