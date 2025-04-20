enum playerstates
{
    normal,
    crouch,
    run,
    dash,
    stomp,
    hurt,
    inactive,
	dead
}

if (!global.inlevel)
	return;

var move = (global.key_right - global.key_left)

var boing = (hpush=0)
var lastimage_xscale = image_xscale
if (move == 1) && brake=false
{
    image_xscale = 1
}
else if (move == -1) && brake=false
{
    image_xscale = -1
}
if (dieded == 0)
{
	if run=true || brake=true
	{
		hsp = ((wsp*image_xscale) + dsh + hpush)
	}
	if run=false
	{
		hsp = ((wsp * move * boing) + dsh + hpush)
	}
}
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
        grounded = (y + 31) < semiinstance.y
        semisolidcollision = grounded
    }
}
walled = (place_meeting((x + hsp), y, obj_collision) && (!(place_meeting((x + hsp), y, obj_slope))))
// airdash
if ((!grounded) && global.key_dashp && dsh == 0 && dshed == 0 && dieded == 0 && global.char="Y")
{
    dsh = (20 * image_xscale)
    dshed = 1
    stmpd = 0
    audio_play_sound(snd_airdash, 1, false)
    sprite_index = spr_yaysuu_airdash
    image_index = 0
}
if (((global.key_dashp && global.key_down) || (global.key_run && global.key_downp)) && grounded && dsh == 0 && dieded == 0 && winning == 0 && global.char="Y")
{
    dsh = (20 * image_xscale)
    audio_play_sound(snd_slide, 1, false)
	sprite_index = spr_yaysuu_slide
    image_index = 0
}
if (((global.key_dashp) || (global.key_run && global.key_downp)) && grounded && dsh == 0 && dieded == 0 && winning == 0 && global.char="T")
{
    dsh = (20 * image_xscale)
    audio_play_sound(snd_slide, 1, false)
	if global.key_down
	{
		sprite_index = spr_teddy_slide
	}
	if !global.key_down
	{
		sprite_index = spr_teddy_dash
	}
    image_index = 0
}
if (grounded && semisolidcollision && move=0 && global.key_down && global.key_runp && grounded && (!stmpd) && (!bounce) && (!dieded) && (!winning) && dsh == 0)
{
    y += 1
    grounded = 0
    semisolidcollision = 0
    stmpd = 0
}
if (global.key_runp && (!walled) && braketimer=0 && wsp>0 && !brake && !run)
{
	audio_play_sound(snd_dashpad,1,false)
    run=true
	if !(instance_exists(obj_boost))
	{
		instance_create_depth(x,y,depth-1,obj_boost)
	}
}
if run=true && !walled
{
	wsp=10
	if !(audio_is_playing(snd_run) && grounded)
	{
		if !brake
		{
			audio_play_sound(snd_run,1,true)
		}
	}
	if (audio_is_playing(snd_run) && !grounded)
	{
		audio_stop_sound(snd_run)
	}
}
if run=true && walled
{
	run=false
	wsp=4
	if (audio_is_playing(snd_run))
	{
		audio_stop_sound(snd_run)
	}
	if (instance_exists(obj_boost))
	{
		instance_destroy(obj_boost)
	}
}
if ((!global.key_run && run=true && grounded) || (lastimage_xscale != image_xscale && run=true && grounded)) && brake=false
{
	brake=true
	audio_play_sound(snd_brake,1,false)
	savedimage_xscale=image_xscale
	braketimer=30
	if (audio_is_playing(snd_run))
	{
		audio_stop_sound(snd_run)
	}
	if (instance_exists(obj_boost))
	{
		instance_destroy(obj_boost)
	}
}
if braketimer=0 && brake=true
{
	if !global.key_run
	{
		run=false
		wsp=4
	}
	if global.key_run
	{
		run=true
		if !(instance_exists(obj_boost))
		{
			instance_create_depth(x,y,depth-1,obj_boost)
		}
		if !(audio_is_playing(snd_run) && grounded)
		{
			audio_play_sound(snd_run,1,true)
		}
		if (audio_is_playing(snd_run) && !grounded)
		{
			audio_stop_sound(snd_run)
		}
	}
	brake=false
}
if braketimer>0 && brake=true
{
	braketimer--
	wsp=2
	image_xscale=savedimage_xscale
}
// stomp
if ((!grounded) && global.key_downp && stmpd == 0 && dieded == 0 && hurtd == 0)
{
    stmpd = 1
    hsp = 0
    audio_play_sound(snd_stomp, 1, false)
}
if (stmpd == 1)
{
    vsp = 10
	if global.char="Y"
	{
		sprite_index = spr_yaysuu_stomp
	}
	if global.char="T"
	{
		sprite_index = spr_teddy_stomp
	}
}
// dash and hpush deceleration
if (dsh > 0)
{ 
	dsh -= 0.5
}
if (dsh < 0)
{
	dsh += 0.5
}
if dsh>0 && dsh<0.5
{
	dsh = 0
}
if dsh<0 && dsh>0.5
{
	dsh = 0
}
if (hpush > 0)
{
	hpush -= 0.5
}
if (hpush < 0)
{
	hpush += 0.5
}
// jumping
if ((grounded || prevgrounded) && global.key_jumpp && (!winning) && global.char="Y" && !brake)
{
    if (!(place_meeting(x, (y + jmp), obj_collision)))
    {
        vsp = jmp
		jumpd = true
        grounded = 0
        prevgrounded = 0
        global.key_down = 0
        dsh = 0
        audio_play_sound(snd_jump, 1, false)
        image_index = 0
    }
}
if (!djumpd && global.key_jumpp && (!winning) && global.char="T" && !brake)
{
    if (!(place_meeting(x, (y + jmp), obj_collision)))
    {
		if jumpd
		{
			audio_play_sound(snd_doublejump, 1, false)
			djumpd=true
			vsp=jmp*1.2
			grounded=0
			prevgrounded=0
			global.key_down=0
		}
		if !jumpd && (grounded || prevgrounded)
		{
			audio_play_sound(snd_jump, 1, false)
			jumpd=true
			vsp=jmp
			grounded=0
			prevgrounded=0
			global.key_down=0
		}
        image_index = 0
    }
}
// bouncing
if ((place_meeting(x, (y + vsp), obj_explode) || grounded) && stmpd && global.char="Y")
{
    if (!(place_meeting(x, (y + jmp), obj_collision)))
    {
        vsp = -10
        grounded = 0
        prevgrounded = 0
        stmpd = 0
        dshed = 0
        bounce = 1
        global.key_down = 0
        dsh = 0
        audio_play_sound(snd_jump, 1, false)
        image_index = 0
    }
}
if (grounded && global.key_down && dsh == 0 && (!winning))
{
    wsp = 0
}
else if run=false && brake=false
{
	wsp = 4
}
if ((place_meeting(x, y, obj_die)) && global.hp > 0)
{
    global.hp = 0
}
if ((place_meeting(x, y, obj_uncanny)) && global.hp > 0 && global.inv = false)
{
    global.hp = 0
}
if ((place_meeting(x, y, obj_enemy) || place_meeting(x, y, obj_harmful) || (instance_exists(obj_boss) && (place_meeting(x, y, obj_boss)) && obj_boss.vulnerable=false && obj_boss.cooldown=false )) && global.hp > 0 && global.inv = 0 && (hurtt == 0) && (!winning))
{
    hurtd = 1
    obj_camera.vshakeoffset = 30
    hurtt = 120
    vsp = -3
    grounded = 0
    global.hp = (global.hp - 1)
	if global.coins < 50
	{
		global.coins = 0
	}
	if global.coins >= 50
	{
		global.coins -= 50
	}
    if (global.scoreadd >= 50)
	{
        global.scoreadd -= 50
	}
    else {
        global.scoreadd = 0
	}
    audio_play_sound(snd_ouchie, 1, false)
}
if (hurtt > 0)
{
	hurtt -= 1
}
if (hurtt == 0)
{
	hurtd = 0
}
if (dsh == 0 && stmpd == 0 && global.inv == 0)
{
    vulnerable = 1
}
else {
    vulnerable = 0
}
if (hurtt > 0 && global.hp > 0)
{
    if (image_alpha == 1)
	{
        image_alpha = 0
	}
    else {
        image_alpha = 1
	}
}
else
    image_alpha = 1
if (place_meeting(x, y, obj_spring) && ((!hurtd) || dieded))
{
	bounce = 1
    grounded = 0
    obj_camera.vshakeoffset = 5
    stmpd = 0
}
if (place_meeting(x, y, obj_diagspring) && ((!hurtd) || dieded))
{
	bounce = 1
    grounded = 0
    obj_camera.vshakeoffset = 5
    stmpd = 0
}
if (place_meeting(x, y, obj_sidespring) && ((!hurtd) || dieded))
{
	vsp = 0
    obj_camera.vshakeoffset = 5
    stmpd = 0
}
if (place_meeting(x, y, obj_dashpad) && ((!hurtd) || dieded))
{
    obj_camera.vshakeoffset = 5
    stmpd = 0
}
if (global.hp == 0 && dieded == 0)
{
    dieded = 1
    if (global.lives >= 1)
        global.lives = (global.lives - 1)
    vsp = -10
	run = false
	brake = false
    grounded = 0
	if global.char="Y"
	{
		sprite_index = spr_yaysuu_deaded
	}
	if global.char="T"
	{
		sprite_index = spr_teddy_die
	}
    audio_stop_all()
    audio_play_sound(mus_dead, 1, false)
}
if (dieded == 1)
{
    move = 0
    image_xscale = 1
}
if instance_exists(obj_goalflag)
{
    if (obj_goalflag.winning == 1) && winning = 0
	{
		image_index=0
        winning = 1
	}
}
if instance_exists(obj_goalflag)
{
    if (obj_goalflag.winning == 1 && grounded)
    {
        hsp = 0
		run = false
		brake = false
		audio_stop_sound(snd_run)
		instance_destroy(obj_boost)
        move = 0
    }
}
if (dieded == 1 && (!audio_is_playing(mus_dead)))
{
    if (global.lives == 0)
    {
        instance_destroy(obj_hud)
        global.nextroom = room_gameover
    }
    else
        global.nextroom = room
    obj_fadeblack.fading = 1
}
if (hurtd == 1 && (!grounded))
{
    hsp = (-3 * image_xscale)
    move = 0
	if global.char="Y"
	{
		sprite_index = spr_yaysuu_ouchie
	}
	if global.char="T"
	{
		sprite_index = spr_teddy_ouch
	}
}

if (dieded == 0)
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
    else if walled
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
        dsh = 0
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
        dshed = 0
        if stmpd=1 && global.char="T"
		{
			obj_camera.vshakeoffset=10
			stmpd=0
		}
		else {
			stmpd=0
		}
        hurtd = 0
        bounce = 0
        grounded = 0
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
		jumpd = false
		djumpd = false
        dshed = 0
		if stmpd=1 && global.char="T"
		{
			obj_camera.vshakeoffset=10
			stmpd=0
		}
		else {
			stmpd=0
		}
        hurtd = 0
        bounce = 0
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
		jumpd = false
		djumpd = false
        dshed = 0
        if stmpd=1 && global.char="T"
		{
			obj_camera.vshakeoffset=10
			stmpd=0
		}
		else {
			stmpd=0
		}
        hurtd = 0
        bounce = 0
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
}
if (place_meeting(x, y, obj_stop) && ((!hurtd) || dieded))
{
	hsp=0
	vsp=-10
	dsh=0
	dshed=0
	stmpd=0
	bounce=1
	image_index=0
}
x += hsp
vsp=clamp(vsp,-20,10)
y += vsp
if (place_meeting(x, y, obj_collision)) && (!dieded)
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
if (global.char == "Y")
{
    if (hsp == 0 && (vsp == 0 || (vsp > 0 && grounded)) && global.key_down == 0 && winning == 0) && !(sprite_index=spr_yaysuu_wait)
	{
		if !(sprite_index=spr_yaysuu_idle)
		{
			sprite_index = spr_yaysuu_idle
			image_index=0
		}
	}
    if ((hsp > 0 || hsp < 0) && grounded && global.key_down == 0 && dshed == 0)
	{
        sprite_index = spr_yaysuu_walk
	}
	if brake=true && grounded
	{
		sprite_index = spr_yaysuu_brake
	}
    if ((hsp > 6 || hsp < -6) && grounded && global.key_down == 0)
	{
        sprite_index = spr_yaysuu_run
	}
    if (vsp < 0 && dsh == 0 && hurtd == 0 && global.hp > 0 && bounce == 0)
	{
        sprite_index = spr_yaysuu_jump
	}
    if ((!grounded) && dsh == 0 && hurtd == 0 && global.hp > 0 && bounce == 1 && (!stmpd))
	{
        sprite_index = spr_yaysuu_spinball
	}
    if (vsp > 0 && dsh == 0 && stmpd == 0 && hurtd == 0 && global.hp > 0 && (!grounded))
	{
		if run=true
		{
			sprite_index = spr_yaysuu_launch
		}
		else {
			sprite_index = spr_yaysuu_fall
		}
	}
    if (grounded && global.key_down && dsh == 0 && (!winning))
	{
        sprite_index = spr_yaysuu_crouch
	}
    if (winning == 1 && sprite_index != spr_yaysuu_winb && hsp == 0 && grounded)
	{
        sprite_index = spr_yaysuu_win
	}
    if dieded
    {
        sprite_index = spr_yaysuu_deaded
        image_angle -= hsp
    }
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
	{
        sprite_index = spr_teddy_walk
	}
	if brake=true && grounded
	{
		sprite_index = spr_teddy_brake
	}
    if ((hsp > 6 || hsp < -6) && dsh=0 && grounded && global.key_down == 0)
	{
        sprite_index = spr_teddy_run
	}
    if (vsp < 0 && dsh == 0 && hurtd == 0 && global.hp > 0 && bounce == 0)
	{
        sprite_index = spr_teddy_jump
	}
    if (vsp > 0 && dsh == 0 && stmpd == 0 && hurtd == 0 && global.hp > 0 && (!grounded))
	{
        sprite_index = spr_teddy_fall
	}
    if (grounded && global.key_down && dsh == 0 && (!winning))
	{
        sprite_index = spr_teddy_crouch
	}
    if (winning == 1 && sprite_index != spr_teddy_winb && hsp == 0 && grounded)
	{
        sprite_index = spr_teddy_win
	}
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
