enum playerstates
{
    normal,
    crouch,
    dash,
    stomp,
    hurt,
    inactive,
	dead,
	slide,
	bounce,
	win
}

if (!global.inlevel)
	return;

if (global.key_start)
	loadroom(room_trialmenu, false)

move = (global.key_right - global.key_left)
if (move != 0)
	facingdirection = move

//grounded checking
if (state == playerstates.stomp)
	grv = stompgrav
else
	grv = normalgrav
vsp += grv
var forcecheck = 0
if (vsp == 0)
    forcecheck = grv
prevgrounded = grounded
grounded = place_meeting(x, ((y + vsp) + forcecheck), obj_slope)
var slopey = grounded
if (!grounded)
    grounded = place_meeting(x, ((y + vsp) + forcecheck), obj_collision)
var semisolidcollision = 0
if (grounded == 0 && vsp >= 0)
{
    var semiinstance = instance_place(x, ((y + vsp) + forcecheck), obj_semisolid_a)
    if (semiinstance != noone)
    {
        grounded = (y + 32 - checkscale) < semiinstance.y
        semisolidcollision = grounded
    }
}

if (state != playerstates.hurt)
{
	if (state == playerstates.crouch || state == playerstates.inactive || state == playerstates.win)
		wsp = 0
	else if (global.key_run)
		wsp = runspeed
	else
		wsp = walkspeed
	yearnedhsp = move * wsp
}

if (grounded)
{
	dshed = false
	djump = true;
}
var candodashdo = abs(hsp) <= runspeed && !amiwalled(hsp)

if (candodashdo)
{
	if (state == playerstates.dash)
	{
		state = playerstates.normal
		newstate = playerstates.normal
	}
	else if (state == playerstates.slide)
	{
		state = playerstates.crouch
		newstate = playerstates.crouch
	}
}

//airdash
if ((!grounded) && global.key_dashp && global.char="Y" && (state == playerstates.normal || state == playerstates.bounce) && newstate == state && !dshed && candodashdo)
{
    hsp = dashboost * facingdirection
    dshed = true
	newstate = playerstates.dash
    audio_play_sound(snd_airdash, 1, false)
}
else if (state == playerstates.dash && newstate == state && grounded)
{
	newstate = playerstates.normal
}
//sliiide to the left! sliiide to the right! criss-cross! criss-cross! cha cha real smooth~ *ragdoll noises*
if (grounded && ((abs(hsp) > walkspeed && global.key_downp) || global.key_dashp) && (state == playerstates.normal || state == playerstates.crouch) && newstate == state && candodashdo && global.char="Y")
{
    hsp = dashboost * facingdirection
	newstate = playerstates.slide
    audio_play_sound(snd_slide, 1, false)
}
//stomp
if ((!grounded) && global.key_downp && newstate == state && (state == playerstates.normal || state == playerstates.dash))
{
    hsp /= 2
	if (vsp < 0)
		vsp = 5
	else
		vsp += 5
    audio_play_sound(snd_stomp, 1, false)
	newstate = playerstates.stomp
}
else if (grounded && state == playerstates.stomp && newstate == state)
{
	newstate = playerstates.bounce
	vsp = bounceheight
    audio_play_sound(snd_bounce, 1, false)
    grounded = false
}
else if (state == playerstates.bounce && newstate == state)
{
	if (vsp >= 0 || (grounded && !prevgrounded))
		newstate = playerstates.normal
}

//crouching
if (grounded && newstate == state && state == playerstates.normal && global.key_down)
	newstate = playerstates.crouch
else if (state == playerstates.crouch && newstate == state && (!grounded || !global.key_down))
	newstate = playerstates.normal

//going through platform
if (grounded && semisolidcollision && global.key_runp && state = playerstates.crouch && (newstate == state || newstate == playerstates.crouch))
{
    y += 1
    grounded = false
    semisolidcollision = false
    audio_play_sound(snd_platfall, 1, false)
}

// jumping
if (grounded && global.key_jumpp && (state != playerstates.slide && newstate != playerstates.slide && state != playerstates.inactive && state != playerstates.win && state != playerstates.crouch && newstate != playerstates.crouch && state != playerstates.dead) && !(place_meeting(x, (y + jmp), obj_collision)))
{
    vsp = jmp
    grounded = false
    audio_play_sound(snd_jump, 1, false)
	grounded = false;
}



if ((place_meeting(x, y, obj_die)) && global.hp > 0)
{
    global.hp = 0
}
if ((place_meeting(x, y, obj_uncanny)) && global.hp > 0 && global.inv = false)
{
    global.hp = 0
}
if ((place_meeting(x, y, obj_enemy) || place_meeting(x, y, obj_harmful) && global.inv = 0 && hurtt == 0 && (!winning)))
{
	if (global.hp > 0)
	{
	    newstate = playerstates.hurt
		obj_camera.vshakeoffset = 30
	    hurtt = 120
		vsp = -3
		yearnedhsp = facingdirection * -3
		hsp = yearnedhsp
	    grounded = false
		global.hp = (global.hp - 1)
		if global.coins < 50
		{
			global.coins = 0
		}
		if global.coins >= 50
		{
			global.coins -= 50
		}
	    global.scoreadd -= 50
		audio_play_sound(snd_ouchie, 1, false)
	}
	else
	{
	    newstate = playerstates.dead
		if (global.lives > 0)
			global.lives--
	    vsp = -abs(vsp)
	    audio_stop_all()
		audio_play_sound(mus_dead, 1, false)
	}
}
if (state == playerstates.hurt && grounded)
	newstate = playerstates.normal

hurtt--
if (hurtt > 0)
{
	if (hurtt < 30)
	{
		if (hurtt % 2 == 0)
			image_alpha = 0.5
		else
			image_alpha = 1
	}
	else
	{
		if (hurtt % 4 > 1)
			image_alpha = 0.5
		else
			image_alpha = 1
	}
}
else
{
    image_alpha = 1
}

vulnerable = !(state == playerstates.dash || state == playerstates.slide || state == playerstates.stomp || newstate == playerstates.dash || newstate == playerstates.slide || newstate == playerstates.stomp || global.inv == 1)

if (state == playerstates.dead)
{
	if (!audio_is_playing(mus_dead))
	{
	    if (global.lives == 0)
		    loadroom(room_gameover, false)
		else
		    loadroom(room, false)
	}

}
else if instance_exists(obj_goalflag)
{
    if (obj_goalflag.winning == 1)
	{
        winning = 1
		if (grounded)
			newstate = playerstates.win
	}
}
//actual movement
if (abs(yearnedhsp - hsp) < yearnaccel)
{
	hsp = yearnedhsp
}
else if (yearnedhsp > hsp)
{
	if (hsp > walkspeed)
		hsp += yearnacceloverspeed
	else
		hsp += yearnaccel
}
else if (yearnedhsp < hsp)
{
	if (hsp < -walkspeed)
		hsp -= yearnacceloverspeed
	else
		hsp -= yearnaccel
}

state = newstate

if (state != playerstates.dead)
{
    var dogroundsnap = 1
    var loopprevent = 0
    if place_meeting((x + hsp), y, obj_slope)
    {
        x += hsp
        while (place_meeting(x, y, obj_slope) && loopprevent < maxloop)
        {
            y -= checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: SLOPE UP SNAP"
        x -= hsp
        dogroundsnap = 0
        grounded = 1
        if (vsp > 0)
            vsp = 0
    }
    else if amiwalled(hsp)
    {
        if (hsp != 0)
        {
            loopprevent = 0
            while ((!(place_meeting((x + (sign(hsp) * checkscale)), y, obj_collision))) && loopprevent < maxloop)
            {
                x += (sign(hsp) * checkscale)
                loopprevent++
            }
            if (loopprevent == maxloop)
                global.debugmessage = "LOOP PREVENT: WALLED"
        }
        hsp = 0
    }
    if (vsp < 0 && place_meeting(x, (y + vsp), obj_collision))
    {
        loopprevent = 0
        while ((!(place_meeting(x, (y - checkscale), obj_collision))) && loopprevent < maxloop)
        {
            y -= checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: CEILING"
        vsp = 0
        grounded = false
    }
    if (grounded && (!semisolidcollision) && dogroundsnap)
    {
        loopprevent = 0
        while ((!(place_meeting(x, (y + checkscale), obj_collision))) && (!(place_meeting(x, (y + checkscale), obj_slope))) && loopprevent < maxloop)
        {
            y += checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
		{
            global.debugmessage = "LOOP PREVENT: GROUNDING"
		}
        vsp = 0
    }
    else if (semisolidcollision && grounded)
    {
        if (vsp >= 0)
        {
            loopprevent = 0
            while ((!(place_meeting(x, (y + checkscale), obj_semisolid_a))) && loopprevent < maxloop)
            {
                y += checkscale
                loopprevent++
            }
            if (loopprevent == maxloop)
                global.debugmessage = "LOOP PREVENT: SEMISOLIDING"
        }
        vsp = 0
    }
    if (vsp > 0 && (!grounded) && prevgrounded && place_meeting(x, ((y + abs(hsp)) + 1), obj_slope))
    {
        vsp = 0
        loopprevent = 0
        while ((!((place_meeting(x, (y + vsp), obj_slope) || place_meeting(x, (y + vsp), obj_collision)))) && loopprevent < maxloop)
        {
            vsp += checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: SLOPE DOWN SNAP"
        grounded = 1
    }
	if (place_meeting((x + hsp), (y + vsp), obj_collision) && hsp != 0 && vsp != 0 && !slopey)
	{
		var xstep
		var ystep
		var dohorzfirst = abs(hsp) > abs(vsp)
		if (dohorzfirst)
		{
			xstep = sign(hsp) * checkscale
			ystep = (abs(vsp) / abs(hsp)) * sign(vsp)
		}
		else
		{
			xstep = (abs(hsp) / abs(vsp)) * sign(hsp) * checkscale
			ystep = sign(vsp) * checkscale
		}
		var finished = false
        loopprevent = 0
		var xstepped = 0
		var ystepped = 0
        while (!finished && loopprevent < maxloop)
        {
			if (dohorzfirst)
			{
				xstepped += xstep
				if (place_meeting(x + xstepped, y + ystepped, obj_collision))
					finished = true
				else
				{
					ystepped += ystep
					if (place_meeting(x + xstepped, y + ystepped, obj_collision))
						finished = true
				}
			}
			else
			{
				ystepped += ystep
				if (place_meeting(x + xstepped, y + ystepped, obj_collision))
					finished = true
				else
				{
					xstepped += xstep
					if (place_meeting(x + xstepped, y + ystepped, obj_collision))
						finished = true
				}
			}
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: DIAGONAL CORNER SNAP"
		else
		{
			hsp = xstepped
			vsp = ystepped
		}
	}
}
x += hsp
vsp=clamp(vsp,-20,10)
y += vsp
if (place_meeting(x, y, obj_collision)) && (state != playerstates.dead)
{
    if !(place_meeting((x + 1), y, obj_collision))
        x += 1
    else if (!(place_meeting((x - 1), y, obj_collision)))
        x -= 1
    else if (!(place_meeting(x, (y + 1), obj_collision)))
        y += 1
    else if (!(place_meeting(x, (y - 1), obj_collision)))
        y -= 1
    else if (!(place_meeting((x + 5), y, obj_collision)))
        x += 5
    else if (!(place_meeting((x - 5), y, obj_collision)))
        x -= 5
    else if (!(place_meeting(x, (y + 5), obj_collision)))
        y += 5
    else if (!(place_meeting(x, (y - 5), obj_collision)))
        y -= 5
    else if (!(place_meeting((x + 10), y, obj_collision)))
        x += 10
    else if (!(place_meeting((x - 10), y, obj_collision)))
        x -= 10
    else if (!(place_meeting(x, (y + 10), obj_collision)))
        y += 10
    else if (!(place_meeting(x, (y - 10), obj_collision)))
        y -= 10
    else if (!(place_meeting((x + 20), y, obj_collision)))
        x += 20
    else if (!(place_meeting((x - 20), y, obj_collision)))
        x -= 20
    else if (!(place_meeting(x, (y + 20), obj_collision)))
        y += 20
    else if (!(place_meeting(x, (y - 20), obj_collision)))
        y -= 20
}

//SPRITES! MY FABOLITE
if (global.char == "Y")
{
	var newsprite = sprite_index
    switch (state)
	{
		case playerstates.normal:
			if (grounded)
			{
				if (sign(hsp) != sign(yearnedhsp))
				{
						newsprite = spr_yaysuu_brake
				}
				else if (abs(hsp) < yearnaccel)
				{
					if (idletime > 600)
						newsprite = spr_yaysuu_wait
					else
						newsprite = spr_yaysuu_idle
				}
				else if (abs(hsp) > runspriterequirement)
					newsprite = spr_yaysuu_run
				else
					newsprite = spr_yaysuu_walk
			}
			else
			{
				if (abs(hsp) > runspriterequirement)
				{
					if (vsp > 0)
						newsprite = spr_yaysuu_launch
					else
						newsprite = spr_yaysuu_launch //yaysuu PLEASE give me a jumping version of this one :sob:
				}
				else
				{
					if (vsp > 0)
						newsprite = spr_yaysuu_fall
					else
						newsprite = spr_yaysuu_jump
				}
			}
			
			if (newsprite != spr_yaysuu_brake)
				image_xscale = facingdirection
			break;
		case playerstates.crouch:
			newsprite = spr_yaysuu_crouch
			image_xscale = facingdirection
			break;
		case playerstates.dash:
			newsprite = spr_yaysuu_airdash
			break;
		case playerstates.stomp:
			newsprite = spr_yaysuu_stomp
			break;
		case playerstates.hurt:
			newsprite = spr_yaysuu_ouchie
			break;
		case playerstates.inactive:
			break;
		case playerstates.dead:
			newsprite = dead
			image_angle += hsp
			break;
		case playerstates.slide:
			newsprite = spr_yaysuu_slide
			break;
		case playerstates.bounce:
			newsprite = spr_yaysuu_spinball
			image_xscale = facingdirection
			break;
		case playerstates.win:
			if (sprite_index != spr_yaysuu_winb)
				newsprite = spr_yaysuu_win
			break;
	}
	if (newsprite != sprite_index)
		image_index = 0
	sprite_index = newsprite
	
	if (sprite_index == spr_yaysuu_jump && image_index == 4) //don't replay the animation. thanks for adding 2 extra useless frame yaysuu!
		image_index = 2
	
	if (sprite_index == spr_yaysuu_idle || sprite_index == spr_yaysuu_wait)
		idletime++
	else
		idletime = 0
}
else if (global.char == "T")
{
    if (hsp == 0 && (vsp == 0 || (vsp > 0 && grounded)) && dsh=0 && global.key_down == 0 && winning == 0 && !(sprite_index=spr_teddy_wait))
	{
		if !(sprite_index=spr_teddy_idle)
		{
			sprite_index = spr_teddy_idle
			image_index = 0
		}
	}
    if ((hsp > 0 || hsp < 0) && dsh=0 && grounded && global.key_down == 0 && dshed == 0)
        sprite_index = spr_teddy_walk
	if brake=true && grounded
		sprite_index = spr_teddy_brake
    if ((hsp > 6 || hsp < -6) && dsh=0 && grounded && global.key_down == 0)
        sprite_index = spr_teddy_run
    if (vsp < 0 && dsh == 0 && hurtd == 0 && global.hp > 0 && bounce == 0)
        sprite_index = spr_teddy_jump
    if (vsp > 0 && dsh == 0 && stmpd == 0 && hurtd == 0 && global.hp > 0 && (!grounded))
        sprite_index = spr_teddy_fall
    if (grounded && global.key_down && dsh == 0 && (!winning))
        sprite_index = spr_teddy_crouch
    if (winning == 1 && sprite_index != spr_teddy_winb && hsp == 0 && grounded)
        sprite_index = spr_teddy_winb
    if dieded
    {
        sprite_index = spr_teddy_die
        image_angle -= hsp
    }
}

if (sprite_index == spr_yaysuu_crouch || sprite_index == spr_yaysuu_slide || sprite_index == spr_teddy_crouch || sprite_index == spr_teddy_slide)
    mask_index = spr_crouchcollisionmask
else
    mask_index = spr_collisionmask
