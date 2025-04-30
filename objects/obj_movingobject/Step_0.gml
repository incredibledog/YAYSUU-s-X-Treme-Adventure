/// @description Insert description here
// You can write your code in this editor
if (grounded)
{
	var loopprevent = 0
    while (!place_meeting(x, y + checkscale, obj_collision) && !place_meeting(x, y + checkscale, obj_othercollision) && loopprevent < maxloop)
    {
        y += checkscale
        loopprevent++
    }
    vsp = 0
}
else if (place_meeting(x, y + vsp, obj_collision) || place_meeting(x, y + vsp, obj_othercollision)) && vsp <= 0
{
	var loopprevent = 0
    while (!place_meeting(x, y + checkscale, obj_collision) && !place_meeting(x, y + checkscale, obj_othercollision) && loopprevent < maxloop)
    {
        y -= checkscale
        loopprevent++
    }
    vsp = 0
}
if (place_meeting(x + hsp, y, obj_collision) || place_meeting(x + hsp, y, obj_othercollision)) && hsp != 0
{
	var loopprevent = 0
    while (!place_meeting(x, y + (checkscale * sign(hsp)), obj_collision) && !place_meeting(x, y + (checkscale * sign(hsp)), obj_othercollision) && loopprevent < maxloop)
    {
        x += checkscale * sign(hsp)
        loopprevent++
    }
    hsp = 0
}

x += hsp
y += vsp

if (slowdown != 0)
{
	if (hsp < slowdown && hsp > -slowdown)
		hsp = 0
	else if (hsp > 0)
		hsp -= slowdown
	else if (hsp < 0)
		hsp += slowdown
}