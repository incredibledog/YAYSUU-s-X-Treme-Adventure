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
//emergency fixing
if (place_meeting(x, y, obj_collision) || place_meeting(x, y, obj_othercollision))
{
    if !(place_meeting(x+1, y, obj_collision) && place_meeting(x+1, y, obj_othercollision))
        x += 1
    else if !(place_meeting(x-1, y, obj_collision) && place_meeting(x-1, y, obj_othercollision))
        x -= 1
    else if !(place_meeting(x, y+1, obj_collision) && place_meeting(x, y+1, obj_othercollision))
        y += 1
    else if !(place_meeting(x, y-1, obj_collision) && place_meeting(x, y-1, obj_othercollision))
        y -= 1
    else if !(place_meeting(x+5, y, obj_collision) && place_meeting(x+5, y, obj_othercollision))
        x += 5
    else if !(place_meeting(x-5, y, obj_collision) && place_meeting(x-5, y, obj_othercollision))
        x -= 5
    else if !(place_meeting(x, y+5, obj_collision) && place_meeting(x, y+5, obj_othercollision))
        y += 5
    else if !(place_meeting(x, y-5, obj_collision) && place_meeting(x, y-5, obj_othercollision))
        y -= 5
    else if !(place_meeting(x+10, y, obj_collision) && place_meeting(x+10, y, obj_othercollision))
        x += 10
    else if !(place_meeting(x-10, y, obj_collision) && place_meeting(x-10, y, obj_othercollision))
        x -= 10
    else if !(place_meeting(x, y+10, obj_collision) && place_meeting(x, y+10, obj_othercollision))
        y += 10
    else if !(place_meeting(x, y-10, obj_collision) && place_meeting(x, y-10, obj_othercollision))
        y -= 10
    else if !(place_meeting(x+20, y, obj_collision) && place_meeting(x+20, y, obj_othercollision))
        x += 20
    else if !(place_meeting(x-20, y, obj_collision) && place_meeting(x-20, y, obj_othercollision))
        x -= 20
    else if !(place_meeting(x, y+20, obj_collision) && place_meeting(x, y+20, obj_othercollision))
        y += 20
    else if !(place_meeting(x, y-20, obj_collision) && place_meeting(x, y-20, obj_othercollision))
        y -= 20
}

if (slowdown != 0)
{
	if (hsp < slowdown && hsp > -slowdown)
		hsp = 0
	else if (hsp > 0)
		hsp -= slowdown
	else if (hsp < 0)
		hsp += slowdown
}