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
	loadroom(room_trialmenu, loadtype.menu)

if (inbackground)
{
	if (!place_meeting(x, y, obj_backplate) && !place_meeting(x, y, obj_backdoor))
		inbackground = false
}

inwater = place_meeting(x, y, obj_water)

move = (global.key_right - global.key_left)
if (move != 0)
	facingdirection = move
if (global.key_run && state == playerstates.normal && abs(hsp) > walkspeed && global.char != "C")
	move = facingdirection

//grounded checking
if (inwater)
{
	grv = watergrav
	maxfallspeed = normmaxfall
}
else if (state == playerstates.normal && !grounded && !djump && global.char == "C")
{
	grv = floatgrav
	maxfallspeed = floatmaxfall
}
else if (state == playerstates.stomp)
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
prevgrounded = grounded
prevslopey = slopey
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
}
else
{
	grounded = false
	slopey = false
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
	djump = (global.char == "T" || global.char == "C")
}

var candodashdo = abs(hsp) <= runspeed && !amiwalled(hsp)

if (state != playerstates.dead && state != playerstates.inactive)
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
if ((!grounded) && global.key_dashp && (state == playerstates.normal || state == playerstates.bounce || state == playerstates.stomp) && newstate == state && !dshed && candodashdo && global.char != "C")
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
		newstate = playerstates.normal
		grounded = true
	}
	else
		scr_player_trybounce()
	hsp += move * smashbump
}
else if (state == playerstates.bounce && newstate == state)
{
	if ((vsp >= 0 && global.char != "C") || grounded)
		newstate = playerstates.normal
	else if (global.key_downp)
	{
		vsp += 5
		audio_play_sound(snd_stomp, 1, false)
		newstate = playerstates.stomp
	}
}

//dash run
if (global.key_runp && state == playerstates.normal && newstate == state && !amiwalled(hsp) && global.char != "C" && !inwater)
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
if (grounded && global.key_runp && state = playerstates.crouch && (newstate == state || newstate == playerstates.crouch))
{
	if (place_meeting(x, y + vsp + forcecheck, obj_semisolid_new) && !place_meeting(x, y + vsp + forcecheck, obj_notsemisolid))
	{
		y += 1
		grounded = false
		prevgrounded = false
		audio_play_sound(snd_platfall, 1, false)
		newstate = playerstates.normal
		with (instance_place(x, y + vsp + forcecheck, obj_semisolid_new))
			y = -2763
	}
}

// jumping
if ((grounded || djump) && global.key_jumpp && (state != playerstates.inactive && state != playerstates.win && state != playerstates.golfstop && newstate != playerstates.golfstop && state != playerstates.dead && !forcecrouch) && !(place_meeting(x, (y + jmp), obj_playercollision)))
{
	if (!grounded)
	{
		if (global.char == "C")
		{
			vsp = fjmp
			audio_play_sound(snd_doublejump_c, 1, false)
		}
		else
		{
			if (inwater)
				vsp = wdjmp
			else
				vsp = djmp
			audio_play_sound(snd_doublejump, 1, false)
		}
		djump = false
	}
	else
	{
		if (inwater)
			vsp = wjmp
		else
			vsp = jmp
		if (global.char == "C")
			audio_play_sound(snd_jump_c, 1, false)
		else
			audio_play_sound(snd_jump, 1, false)
	}
    grounded = false
	prevgrounded = false
	slopey = false
	prevslopey = false
	newstate = playerstates.normal
}
else if (inwater && global.key_jumpp && state == playerstates.normal && newstate == state && !(place_meeting(x, (y + wbop), obj_playercollision)))
{
	vsp = wbop
	audio_play_sound(snd_waterswim, 1, false)
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
	if ((!global.inv && hurtt <= 0 && !winning) || deathies) && state != playerstates.dead && state != playerstates.inactive
	{
		if (deathies)
			global.hp = 0
		else
			global.hp--
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
			scr_collectcoins(-50)
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
			damageflash = true
		else
			damageflash = false
	}
	else
	{
		if (hurtt % 4 > 1)
			damageflash = true
		else
			damageflash = false
	}
}
else
    damageflash = false

//vulnerability
var runattack = (abs(hsp) > rundamagespeed && sign(hsp) == sign(yearnedhsp) && state == playerstates.normal)
vulnerable = !(state == playerstates.dash || state == playerstates.slide || state == playerstates.stomp || newstate == playerstates.dash || newstate == playerstates.slide || newstate == playerstates.stomp || global.inv == 1 || runattack || ((state == playerstates.bounce || newstate == playerstates.bounce) && global.char == "C"))
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
		    loadroom(room_gameover, loadtype.menu)
		else
		    loadroom(room, loadtype.respawn)
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
if (state != playerstates.golfstop && state != playerstates.dead)
{
	var accel
	if abs(hsp) >= walkspeed && (hsp * sign(hsp)) < (yearnedhsp * sign(hsp)) && !global.inv && global.char == "C" //cotton's gradual run
		accel = yearnacceloverspeed
	else if (sign(hsp) != sign(yearnedhsp) && sign(yearnedhsp) != 0) || (abs(hsp) <= runspeed) //wants to decrease below walking
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
if (!grounded)
	slopey = false
if (!prevgrounded)
	prevslopey = false
if (hascollision)
{
    var dogroundsnap = true
    var loopprevent = 0
	var newpos = 0
    if place_meeting((x + hsp), y, obj_slope)
    {
		newpos = y
        while (place_meeting(x + hsp, newpos, obj_slope) && loopprevent < maxloop)
        {
            newpos -= checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: SLOPE UP SNAP"
		else
		{
			y = newpos
            global.debugmessage = "SLOPE UP SNAP"
			dogroundsnap = false
			grounded = true
			if (vsp > 0)
				vsp = 0
			
			if (state == playerstates.bounce && global.char == "C") // ):<
				newstate = playerstates.normal
		}
    }
    else if amiwalled(hsp) && hsp != 0
    {
		loopprevent = 0
		newpos = x
		while ((!(place_meeting((newpos + (sign(hsp) * checkscale)), y, obj_playercollision))) && loopprevent < maxloop)
		{
			newpos += (sign(hsp) * checkscale)
			loopprevent++
		}
		if (loopprevent == maxloop)
			global.debugmessage = "LOOP PREVENT: WALLED"
		else
		{
			x = newpos
			global.debugmessage = "WALLED"
			hsp = 0
			gotwalled = true
		}
    }
    if (vsp < 0 && place_meeting(x, (y + vsp), obj_playercollision))
    {
        loopprevent = 0
		newpos = y
        while ((!(place_meeting(x, (newpos - checkscale), obj_playercollision))) && loopprevent < maxloop)
        {
            newpos -= checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: CEILING"
		else
		{
			y = newpos
            global.debugmessage = "CEILING"
			vsp = 0
			grounded = false
		}
    }
    /*if (vsp >= 0 && prevslopey && !slopey && place_meeting(x, ((y + abs(hsp)) + 1), obj_slope))
    {
        loopprevent = 0
		newpos = y
        while ((!((place_meeting(x, (newpos + checkscale), obj_slope) || place_meeting(x, (newpos + checkscale), obj_playercollision)))) && loopprevent < maxloop)
        {
            newpos += checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: SLOPE DOWN SNAP"
		else
		{
			y = newpos
            global.debugmessage = "SLOPE DOWN SNAP"
			vsp = 0
			grounded = true
			slopey = true
		}
    }*/
    else if ((grounded || (prevslopey && !grounded)) && dogroundsnap)
    {
        loopprevent = 0
		newpos = y
        while (!place_meeting(x, (newpos + checkscale), obj_playercollision) && loopprevent < maxloop)
        {
            newpos += checkscale
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: GROUNDING"
		else
		{
			y = newpos
            global.debugmessage = "GROUNDING"
			vsp = 0
		}
    }
	if (place_meeting((x + hsp), (y + vsp), obj_playercollision) && hsp != 0 && vsp != 0 && !slopey)
	{
		newpos = x
		var newposy = y
		
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
				if (place_meeting(newpos + xstepped, newposy + ystepped, obj_playercollision))
				{
					finished = true
					newpos += xstepped - xstep
					hsp = 0
				}
				else
				{
					ystepped += ystep
					if (place_meeting(newpos + xstepped, newposy + ystepped, obj_playercollision))
					{
						finished = true
						ystepped -= ystep
						newposy += ystepped - ystep
						vsp = 0
					}
				}
			}
			else
			{
				ystepped += ystep
				if (place_meeting(newpos + xstepped, newposy + ystepped, obj_playercollision))
				{
					finished = true
					ystepped -= ystep
					newposy += ystepped - ystep
					vsp = 0
				}
				else
				{
					xstepped += xstep
					if (place_meeting(newpos + xstepped, newposy + ystepped, obj_playercollision))
					{
						finished = true
						xstepped -= xstep
						newpos += xstepped - xstep
						hsp = 0
					}
				}
			}
            loopprevent++
        }
        if (loopprevent == maxloop)
            global.debugmessage = "LOOP PREVENT: DIAGONAL CORNER SNAP"
		else
		{
			x = newpos
			y = newposy
            global.debugmessage = "DIAGONAL CORNER SNAP"
		}
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

//always wrap
if (room == room_dev)
{
	if (x < -64)
		x = room_width + 32
	else if (x > room_width + 64)
		x = -32
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
else if (global.char == "C")
{
	var newsprite = sprite_index
    switch (state)
	{
		case playerstates.normal:
			if (grounded)
			{
				if (sign(hsp) != sign(yearnedhsp) && !gotwalled)
				{
					if ((sprite_index == spr_cotton_idle || sprite_index == spr_cotton_walk) && abs(hsp) < walkspeed && sign(yearnedhsp) == 0)
						newsprite = spr_cotton_idle
					else
						newsprite = spr_cotton_brake
				}
				else if (abs(hsp) < yearnaccel)
				{
					if (idletime > 600)
						newsprite = spr_cotton_wait
					else
						newsprite = spr_cotton_idle
				}
				else if (abs(hsp) > walkspeed)
					newsprite = spr_cotton_run
				else
					newsprite = spr_cotton_walk
			}
			else
			{
				if (!djump)
				{
					newsprite = spr_cotton_fly
				}
				else
				{
					if (vsp > 0)
						newsprite = spr_cotton_fall
					else
						newsprite = spr_cotton_jump
				}
			}
			
			if (newsprite != spr_cotton_brake)
				image_xscale = facingdirection
			break;
		case playerstates.crouch:
			newsprite = spr_cotton_crouch
			image_xscale = facingdirection
			break;
		case playerstates.stomp:
			newsprite = spr_cotton_ball
			image_xscale = 1
			break;
		case playerstates.hurt:
			newsprite = spr_cotton_ouchie
			break;
		case playerstates.inactive:
			break;
		case playerstates.dead:
			newsprite = spr_cotton_dieded
			image_angle += hsp
			break;
		case playerstates.slide:
			newsprite = spr_cotton_slide
			break;
		case playerstates.bounce:
			newsprite = spr_cotton_ball
			image_xscale = 1
			break;
		case playerstates.win:
			newsprite = spr_cotton_win
			break;
		case playerstates.golfstop:
			newsprite = spr_cotton_ball
			image_xscale = 1
			break;
	}
	if (newsprite != sprite_index)
	{
		image_index = 0
		if sprite_index == spr_cotton_brake
			image_xscale = facingdirection
	}
	sprite_index = newsprite
	
	if (sprite_index == spr_cotton_jump && round(image_index) == 3)
		image_index = 1
	
	if (sprite_index == spr_cotton_idle || sprite_index == spr_cotton_wait)
		idletime++
	else
		idletime = 0

	if (!audio_exists(runningsound))
		runningsound = audio_play_sound(snd_run, 1, true)
	if (sprite_index == spr_cotton_run)
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
		
	if (sprite_index == spr_cotton_brake && abs(hsp) > walkspeed)
	{
		if (!hasplayedbrakesound)
		{
			audio_play_sound(snd_slip, 1, false)
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

if (inbackground && image_alpha > 0.5)
	image_alpha -= 0.05
else if (!inbackground && image_alpha < 1)
	image_alpha += 0.05