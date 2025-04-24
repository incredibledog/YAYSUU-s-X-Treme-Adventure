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
	win,
	golfstop
}

if (!global.inlevel)
	return;

if (global.key_start)
	loadroom(room_trialmenu, false)

move = (global.key_right - global.key_left)
if (move != 0)
	facingdirection = move
else if (global.key_run && state == playerstates.normal && abs(hsp) > walkspeed)
	move = facingdirection

//grounded checking
if (state == playerstates.stomp)
{
	grv = stompgrav
	maxfallspeed = stompmaxfall
}
else
{
	grv = normalgrav
	maxfallspeed = normmaxfall
}
if (abs(vsp - maxfallspeed) < grv)
	vsp = maxfallspeed
else if (vsp < maxfallspeed)
	vsp += grv
else if (vsp > maxfallspeed)
	vsp -= grv
var forcecheck = 0
if (vsp == 0)
    forcecheck = grv
prevgrounded = grounded

grounded = place_meeting(x, ((y + vsp) + forcecheck), obj_slope)
var slopey = grounded
if (!grounded)
    grounded = place_meeting(x, ((y + vsp) + forcecheck), obj_playercollision)
var semisolidcollision = false
if (!grounded && vsp >= 0)
{
    var semiinstance = instance_place(x, ((y + vsp) + forcecheck), obj_semisolid_a)
    if (semiinstance != noone)
    {
        grounded = (y + 31) < semiinstance.y
        semisolidcollision = grounded
    }
}

if (state != playerstates.hurt && state != playerstates.dead)
{
	if (state == playerstates.crouch || state == playerstates.inactive || state == playerstates.win)
		wsp = 0
	else if (global.key_run)
		wsp = runspeed
	else
		wsp = walkspeed
	yearnedhsp = move * wsp
}

if (grounded || state == playerstates.golfstop)
{
	dshed = false
	djump = global.char == "T"
}

var candodashdo = abs(hsp) <= runspeed && !amiwalled(hsp)

if (state != playerstates.dead)
{
	
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
if ((!grounded) && global.key_dashp && (state == playerstates.normal || state == playerstates.bounce) && newstate == state && !dshed && candodashdo)
{
    hsp = dashboost * facingdirection
    dshed = true
	newstate = playerstates.dash
    audio_play_sound(snd_airdash, 1, false)
}
if (state == playerstates.dash && newstate == state && grounded)
{
	newstate = playerstates.normal
}

//sliiide to the left! sliiide to the right! criss-cross! criss-cross! cha cha real smooth~ *ragdoll noises*
if (grounded && ((abs(hsp) > walkspeed && global.key_downp) || global.key_dashp) && (state == playerstates.normal || state == playerstates.crouch) && newstate == state && candodashdo)
{
    hsp = dashboost * facingdirection
	newstate = playerstates.slide
    audio_play_sound(snd_slide, 1, false)
}

//stomp
if ((!grounded) && global.key_downp && newstate == state && (state == playerstates.normal || state == playerstates.dash))
{
	if (vsp < 10)
		vsp = 10
    audio_play_sound(snd_stomp, 1, false)
	newstate = playerstates.stomp
}
else if (grounded && state == playerstates.stomp && newstate == state)
{
	if (global.char == "T")
	{
		newstate = playerstates.bounce
		vsp = smashbump
		grounded = false
	}
	else
		scr_player_trybounce()
}
else if (state == playerstates.bounce && newstate == state)
{
	if (vsp >= 0 || (grounded && !prevgrounded))
		newstate = playerstates.normal
	else if (global.key_downp)
	{
		vsp += 5
		audio_play_sound(snd_stomp, 1, false)
		newstate = playerstates.stomp
	}
}

//dash run
if (global.key_runp && state == playerstates.normal && newstate == state && !amiwalled(hsp))
{
	yearnedhsp = facingdirection * runspeed
	if (abs(hsp) < (yearnedhsp) || sign(hsp) != sign(yearnedhsp)) //you will not slow down if you start a run
		hsp = yearnedhsp
	audio_play_sound(snd_dashpad, 1, false)
	with (instance_create_depth(x, y, depth + 1, obj_animatedeffect))
	{
		image_xscale = other.facingdirection
		sprite_index = spr_runwhoosh
		fade = true
		image_blend = other.whooshcolor
	}
}

//crouching
var forcecrouch = false
var savedmask = mask_index
mask_index = spr_collisionmask
if (place_meeting(x, y, obj_playercollision))
{
	if ((abs(hsp) <= runspeed || amiwalled(hsp)) && state != playerstates.slide)
		newstate = playerstates.crouch
	else
		newstate = playerstates.slide
	forcecrouch = true
}
mask_index = savedmask

if (grounded && newstate == state && state == playerstates.normal && global.key_down)
	newstate = playerstates.crouch
else if (state == playerstates.crouch && newstate == state && (!grounded || !global.key_down) && !forcecrouch)
	newstate = playerstates.normal

//going through platform
if (grounded && semisolidcollision && global.key_runp && state = playerstates.crouch && (newstate == state || newstate == playerstates.crouch))
{
    y += 1
    grounded = false
    semisolidcollision = false
    audio_play_sound(snd_platfall, 1, false)
	newstate = playerstates.normal
}

// jumping
if ((grounded || djump) && global.key_jumpp && (state != playerstates.inactive && state != playerstates.win && state != playerstates.crouch && newstate != playerstates.crouch && state != playerstates.golfstop && newstate != playerstates.golfstop && state != playerstates.dead) && !(place_meeting(x, (y + jmp), obj_playercollision)))
{
	if (!grounded)
	{
		vsp = djmp
		djump = false
		audio_play_sound(snd_doublejump, 1, false)
	}
	else
	{
		vsp = jmp
		audio_play_sound(snd_jump, 1, false)
	}
    grounded = false
	newstate = playerstates.normal
}

if (state == playerstates.golfstop && newstate == state)
{
	if (global.key_jumpp)
	{
		vsp = jmp
		hsp = move * walkspeed
		newstate = playerstates.normal
	}
	else
	{
		vsp = 0
		hsp = 0
	}
}

//ow! ow! that hurts! that hurts!
if (ouchies)
{
	ouchies = false
	if ((!global.inv && hurtt <= 0 && !winning) || deathies) && state != playerstates.dead
	{
		if (deathies)
			global.hp = 0
		if (global.hp > 0)
		{
		    newstate = playerstates.hurt
			grounded = false
			obj_camera.vshakeoffset = 30
			hurtt = 120
			vsp = -3
			yearnedhsp = facingdirection * -3
			hsp = yearnedhsp
		    grounded = false
			global.hp--
			if global.coins < 50
				global.coins = 0
			else
				global.coins -= 50
		    global.scoreadd -= 50
			audio_play_sound(snd_ouchie, 1, false)
		}
		else
		{
			deathies = false;
		    newstate = playerstates.dead
			if (global.lives > 0)
				global.lives--
		    vsp = -abs(vsp)
		    audio_stop_all()
			audio_play_sound(mus_dead, 1, false)
		}
	}
}
if (state == playerstates.hurt && grounded)
	newstate = playerstates.normal

if (hurtt > 0)
{
	hurtt--
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

//vulnerability
var runattack = (abs(hsp) > rundamagespeed && sign(hsp) == sign(yearnedhsp) && state == playerstates.normal)
vulnerable = !(state == playerstates.dash || state == playerstates.slide || state == playerstates.stomp || newstate == playerstates.dash || newstate == playerstates.slide || newstate == playerstates.stomp || global.inv == 1 || runattack)
if (vulnerable)
	global.combo = 0
if (runattack)
	runanimtimer++
else
	runanimtimer = -1

}

//the death fade
if (state == playerstates.dead)
{
	if (!audio_is_playing(mus_dead) && !obj_fadeblack.fading)
	{
	    if (global.lives == 0)
		    loadroom(room_gameover, false)
		else
		    loadroom(room, true)
	}
}
else
{
	image_angle = 0
	if instance_exists(obj_goalflag)
	{
	    if (obj_goalflag.winning == 1)
		{
	        winning = 1
			if (grounded)
				newstate = playerstates.win
		}
	}
}

if (state != playerstates.dead)
	state = newstate

//actual movement
if (state != playerstates.golfstop)
{
	var accel
	//if abs(hsp) >= walkspeed && (hsp * sign(hsp)) < (yearnedhsp * sign(hsp)) && !global.inv && global.char != "T" //wants to increase above walking
	//	accel = yearnacceloverspeed
	if (sign(hsp) != sign(yearnedhsp) && sign(yearnedhsp) != 0) || (abs(hsp) <= runspeed) //wants to decrease below walking
		accel = yearnaccelunderspeed
	else
		accel = yearnaccel
	
	if (abs(yearnedhsp - hsp) < accel)
		hsp = yearnedhsp
	else if (yearnedhsp > hsp)
		hsp += accel
	else if (yearnedhsp < hsp)
		hsp -= accel
}

//set mask
hascollision = true
if (state == playerstates.dead)
    hascollision = false
else if (state == playerstates.crouch || state == playerstates.slide)
    mask_index = spr_crouchcollisionmask
else
    mask_index = spr_collisionmask

//COLLISIONS!!! WAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
var gotwalled = false
if (hascollision)
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
            while ((!(place_meeting((x + (sign(hsp) * checkscale)), y, obj_playercollision))) && loopprevent < maxloop)
            {
                x += (sign(hsp) * checkscale)
                loopprevent++
            }
            if (loopprevent == maxloop)
                global.debugmessage = "LOOP PREVENT: WALLED"
        }
        hsp = 0
		gotwalled = true
    }
    if (vsp < 0 && place_meeting(x, (y + vsp), obj_playercollision))
    {
        loopprevent = 0
        while ((!(place_meeting(x, (y - checkscale), obj_playercollision))) && loopprevent < maxloop)
        {
            y -= checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: CEILING"
        vsp = 0
        grounded = false
    }
    if (vsp > 0 && (!grounded) && prevgrounded && place_meeting(x, ((y + abs(hsp)) + 1), obj_slope))
    {
        vsp = 0
        loopprevent = 0
        while ((!((place_meeting(x, (y + checkscale), obj_slope) || place_meeting(x, (y + checkscale), obj_playercollision)))) && loopprevent < maxloop)
        {
            y += checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: SLOPE DOWN SNAP"
        grounded = 1
    }
    if (grounded && (!semisolidcollision) && dogroundsnap)
    {
        loopprevent = 0
        while ((!(place_meeting(x, (y + checkscale), obj_playercollision))) && (!(place_meeting(x, (y + checkscale), obj_slope))) && loopprevent < maxloop)
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
	if (place_meeting((x + hsp), (y + vsp), obj_playercollision) && hsp != 0 && vsp != 0 && !slopey)
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
				if (place_meeting(x + xstepped, y + ystepped, obj_playercollision))
				{
					finished = true
					x += xstepped - xstep
					hsp = 0
				}
				else
				{
					ystepped += ystep
					if (place_meeting(x + xstepped, y + ystepped, obj_playercollision))
					{
						finished = true
						ystepped -= ystep
						y += ystepped - ystep
						vsp = 0
					}
				}
			}
			else
			{
				ystepped += ystep
				if (place_meeting(x + xstepped, y + ystepped, obj_playercollision))
				{
					finished = true
					ystepped -= ystep
					y += ystepped - ystep
					vsp = 0
				}
				else
				{
					xstepped += xstep
					if (place_meeting(x + xstepped, y + ystepped, obj_playercollision))
					{
						finished = true
						xstepped -= xstep
						x += xstepped - xstep
						hsp = 0
					}
				}
			}
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: DIAGONAL CORNER SNAP"
	}
}
x += hsp
y += vsp
//emergency fixing
if (place_meeting(x, y, obj_playercollision)) && hascollision
{
    if !(place_meeting((x + 1), y, obj_playercollision))
        x += 1
    else if (!(place_meeting((x - 1), y, obj_playercollision)))
        x -= 1
    else if (!(place_meeting(x, (y + 1), obj_playercollision)))
        y += 1
    else if (!(place_meeting(x, (y - 1), obj_playercollision)))
        y -= 1
    else if (!(place_meeting((x + 5), y, obj_playercollision)))
        x += 5
    else if (!(place_meeting((x - 5), y, obj_playercollision)))
        x -= 5
    else if (!(place_meeting(x, (y + 5), obj_playercollision)))
        y += 5
    else if (!(place_meeting(x, (y - 5), obj_playercollision)))
        y -= 5
    else if (!(place_meeting((x + 10), y, obj_playercollision)))
        x += 10
    else if (!(place_meeting((x - 10), y, obj_playercollision)))
        x -= 10
    else if (!(place_meeting(x, (y + 10), obj_playercollision)))
        y += 10
    else if (!(place_meeting(x, (y - 10), obj_playercollision)))
        y -= 10
    else if (!(place_meeting((x + 20), y, obj_playercollision)))
        x += 20
    else if (!(place_meeting((x - 20), y, obj_playercollision)))
        x -= 20
    else if (!(place_meeting(x, (y + 20), obj_playercollision)))
        y += 20
    else if (!(place_meeting(x, (y - 20), obj_playercollision)))
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
				if (sign(hsp) != sign(yearnedhsp) && !gotwalled)
				{
					if ((sprite_index == spr_yaysuu_idle || sprite_index == spr_yaysuu_walk) && abs(hsp) < walkspeed && sign(yearnedhsp) == 0)
						newsprite = spr_yaysuu_idle
					else
						newsprite = spr_yaysuu_brake
				}
				else if (abs(hsp) < yearnaccel)
				{
					if (idletime > 600)
						newsprite = spr_yaysuu_wait
					else
						newsprite = spr_yaysuu_idle
				}
				else if (abs(hsp) > walkspeed)
					newsprite = spr_yaysuu_run
				else
					newsprite = spr_yaysuu_walk
			}
			else
			{
				if (abs(hsp) > walkspeed)
				{
					if (vsp > 0)
						newsprite = spr_yaysuu_launch
					else
						newsprite = spr_yaysuu_launchjump
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
			newsprite = spr_yaysuu_deaded
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
		case playerstates.golfstop:
			newsprite = spr_yaysuu_spinball
			break;
	}
	if (newsprite != sprite_index)
	{
		image_index = 0
		if sprite_index == spr_yaysuu_brake
			image_xscale = facingdirection
	}
	sprite_index = newsprite
	
	if (sprite_index == spr_yaysuu_jump && image_index == 4) //don't replay the animation. thanks for adding 2 extra useless frame yaysuu!
		image_index = 2
	
	if (sprite_index == spr_yaysuu_idle || sprite_index == spr_yaysuu_wait)
		idletime++
	else
		idletime = 0

	if (!audio_exists(runningsound))
		runningsound = audio_play_sound(snd_run, 1, true)
	if (sprite_index == spr_yaysuu_run)
	{
		if audio_is_paused(runningsound)
			audio_resume_sound(runningsound)
		
		var runpitch = ((abs(hsp) - walkspeed)  / (runspeed - walkspeed) * 0.5) + 0.5 //hsp=walkspeed -> 0.5   hsp=runspeed -> 1
		audio_sound_pitch(runningsound, runpitch)
		image_speed = runpitch
	}
	else if !audio_is_paused(runningsound)
	{
		audio_pause_sound(runningsound)
		image_speed = 1
	}
		
	if (sprite_index == spr_yaysuu_brake && abs(hsp) > walkspeed)
	{
		if (!hasplayedbrakesound)
		{
			audio_play_sound(snd_brake, 1, false)
			hasplayedbrakesound = true
		}
	}
	else
		hasplayedbrakesound = false
}
else if (global.char == "T")
{
    var newsprite = sprite_index
    switch (state)
	{
		case playerstates.normal:
			if (grounded)
			{
				if (sign(hsp) != sign(yearnedhsp) && !gotwalled)
				{
					if ((sprite_index == spr_teddy_idle || sprite_index == spr_yaysuu_walk) && abs(hsp) < walkspeed && sign(yearnedhsp) == 0)
						newsprite = spr_teddy_idle
					else
						newsprite = spr_teddy_brake
				}
				else if (abs(hsp) < yearnaccel)
				{
					if (idletime > 600)
						newsprite = spr_teddy_wait
					else
						newsprite = spr_teddy_idle
				}
				else if (abs(hsp) > walkspeed)
					newsprite = spr_teddy_run
				else
					newsprite = spr_teddy_walk
			}
			else
			{
				if (abs(hsp) > walkspeed)
				{
					if (vsp > 0)
						newsprite = spr_teddy_launch
					else
						newsprite = spr_teddy_launchjump
				}
				else
				{
					if (vsp > 0)
						newsprite = spr_teddy_fall
					else
						newsprite = spr_teddy_jump
				}
			}
			
			if (newsprite != spr_teddy_brake)
				image_xscale = facingdirection
			break;
		case playerstates.crouch:
			newsprite = spr_teddy_crouch
			image_xscale = facingdirection
			break;
		case playerstates.dash:
			newsprite = spr_teddy_dash
			break;
		case playerstates.stomp:
			newsprite = spr_teddy_stomp
			break;
		case playerstates.hurt:
			newsprite = spr_teddy_ouch
			break;
		case playerstates.inactive:
			break;
		case playerstates.dead:
			newsprite = spr_teddy_die
			image_angle += hsp
			break;
		case playerstates.slide:
			newsprite = spr_teddy_slide
			break;
		case playerstates.bounce:
			newsprite = spr_teddy_fall
			image_xscale = facingdirection
			break;
		case playerstates.win:
			if (sprite_index != spr_teddy_winb)
				newsprite = spr_teddy_win
			break;
		case playerstates.golfstop:
			newsprite = spr_yaysuu_spinball
			break;
	}
	if (newsprite != sprite_index)
	{
		image_index = 0
		if sprite_index == spr_teddy_brake
			image_xscale = facingdirection
	}
	sprite_index = newsprite
	
	if (sprite_index == spr_teddy_jump && image_index == 5)
		image_index = 2
	
	if (sprite_index == spr_teddy_idle || sprite_index == spr_teddy_wait)
		idletime++
	else
		idletime = 0

	if (!audio_exists(runningsound))
		runningsound = audio_play_sound(snd_run, 1, true)
	if (sprite_index == spr_teddy_run)
	{
		if audio_is_paused(runningsound)
			audio_resume_sound(runningsound)
		
		var runpitch = ((abs(hsp) - walkspeed)  / (runspeed - walkspeed) * 0.5) + 0.5 //hsp=walkspeed -> 0.5   hsp=runspeed -> 1
		audio_sound_pitch(runningsound, runpitch)
		image_speed = runpitch
	}
	else if !audio_is_paused(runningsound)
	{
		audio_pause_sound(runningsound)
		image_speed = 1
	}
		
	if (sprite_index == spr_teddy_brake && abs(hsp) > walkspeed)
	{
		if (!hasplayedbrakesound)
		{
			audio_play_sound(snd_brake, 1, false)
			hasplayedbrakesound = true
		}
	}
	else
		hasplayedbrakesound = false
}

if (global.inv)
{
	rainbowtimer++
	image_blend = make_color_hsv((rainbowtimer / 60 * 128) mod 256,64,255);
}
else
	image_blend = c_white