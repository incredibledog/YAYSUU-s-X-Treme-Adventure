key_left = (keyboard_check(vk_left) || keyboard_check(ord("A"))) || gamepad_axis_value(0, gp_axislh) < -0.352 || gamepad_button_check(0, gp_padl);
key_right = (keyboard_check(vk_right) || keyboard_check(ord("D"))) || gamepad_axis_value(0, gp_axislh) > 0.352 || gamepad_button_check(0, gp_padr);
key_up = (keyboard_check(vk_up) || keyboard_check(ord("W"))) || gamepad_axis_value(0, gp_axislv) < -0.352 || gamepad_button_check(0, gp_padl);
key_jump = (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_space)) || gamepad_button_check_pressed(0, gp_face1)
key_dash = (keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("E"))) || keyboard_check_pressed(vk_control) || gamepad_button_check_pressed(0, gp_face4)
key_run = (keyboard_check(ord("C")) || keyboard_check(vk_shift)) || gamepad_button_check(0, gp_face3)
key_down = (keyboard_check(vk_down) || keyboard_check(ord("S"))) || gamepad_axis_value(0, gp_axislv) > 0.352 || gamepad_button_check(0, gp_padd) || gamepad_button_check(0, gp_face2)
key_downp = (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_padd)
var move = (key_right - key_left) 
if (dieded == 0)
{
    hsp = ((wsp * move) + dsh + hpush)
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
hpush = clamp(hpush,-20,20)
// airdash
if ((!grounded) && key_dash && dsh == 0 && dshed == 0 && dieded == 0 && global.char="Y")
{
    dsh = (15 * image_xscale)
    dshed = 1
    stmpd = 0
    audio_play_sound(snd_airdash, 1, false)
    sprite_index = spr_yaysuu_airdash
    image_index = 0
}
if (((key_dash && key_down) || (key_run && key_downp)) && grounded && dsh == 0 && dieded == 0 && winning == 0 && global.char="Y")
{
    dsh = (15 * image_xscale)
    audio_play_sound(snd_slide, 1, false)
	sprite_index = spr_yaysuu_slide
    image_index = 0
}
if (((key_dash) || (key_run && key_downp)) && grounded && dsh == 0 && dieded == 0 && winning == 0 && global.char="T")
{
    dsh = (15 * image_xscale)
    audio_play_sound(snd_slide, 1, false)
	if key_down
	{
		sprite_index = spr_teddy_slide
	}
	if !key_down
	{
		sprite_index = spr_teddy_dash
	}
    image_index = 0
}
if (grounded && semisolidcollision && key_down && key_run && grounded && (!dieded) && (!winning) && dsh == 0 && global.platfall)
{
    y += 1
    grounded = 0
    semisolidcollision = 0
    stmpd = 0
}
if (key_run && (move > 0 || move < 0) && (!walled))
{
    wsp = 8
}
else {
    wsp = 4
}
// stomp
if ((!grounded) && key_downp && stmpd == 0 && dieded == 0 && hurtd == 0)
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
if (hpush > 0)
{
	hpush -= 0.5
}
if (hpush < 0)
{
	hpush += 0.5
}
// jumping
if ((grounded || prevgrounded) && key_jump && (!winning) && global.char="Y")
{
    if (!(place_meeting(x, (y + jmp), obj_collision)))
    {
        vsp = jmp
		jumpd = true
        grounded = 0
        prevgrounded = 0
        key_down = 0
        dsh = 0
        audio_play_sound(snd_jump, 1, false)
        image_index = 0
    }
}
if (!djumpd && key_jump && (!winning) && global.char="T")
{
    if (!(place_meeting(x, (y + jmp), obj_collision)))
    {
        vsp = jmp
        grounded = 0
        prevgrounded = 0
        key_down = 0
        dsh = 0
		if jumpd
		{
			audio_play_sound(snd_doublejump, 1, false)
			djumpd=true
		}
		if !jumpd
		{
			audio_play_sound(snd_jump, 1, false)
			jumpd=true
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
        key_down = 0
        dsh = 0
        audio_play_sound(snd_jump, 1, false)
        image_index = 0
    }
}
if (grounded && key_down && dsh == 0 && (!winning))
{
    wsp = 0
}
if ((place_meeting(x, y, obj_die)) && global.hp > 0)
{
    global.hp = 0
}
if ((place_meeting(x, y, obj_enemy) || place_meeting(x, y, obj_harmful) || (instance_exists(obj_boss) && (place_meeting(x, y, obj_boss)) && obj_boss.vulnerable=false && obj_boss.cooldown=false ) || keyboard_check_pressed(ord("O"))) && global.hp > 0 && (hurtt == 0 || keyboard_check_pressed(ord("O"))) && (!winning))
{
    hurtd = 1
    obj_camera.vshakeoffset = 30
    hurtt = (room_speed * 2)
    vsp = -3
    grounded = 0
    global.hp = (global.hp - 1)
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
if (dsh == 0 && stmpd == 0)
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
    vsp = (jmp * 2)
	bounce = 1
    grounded = 0
    obj_camera.vshakeoffset = 5
    stmpd = 0
}
if (place_meeting(x, y, obj_diagspring) && ((!hurtd) || dieded))
{
    vsp = (jmp * 2)
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
if (global.hp == 0 && dieded == 0)
{
    dieded = 1
    if (global.lives >= 1)
        global.lives = (global.lives - 1)
    vsp = -10
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
    if (obj_goalflag.winning == 1)
        winning = 1
}
if instance_exists(obj_goalflag)
{
    if (obj_goalflag.winning == 1 && grounded)
    {
        hsp = 0
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
	if place_meeting(x,y,obj_collision) // emergency systems
	{
		if !(place_meeting(x+5,y,obj_collision))
		{
			x+=5
		}
		if !(place_meeting(x-5,y,obj_collision))
		{
			x-=5
		}
		if !(place_meeting(x,y+5,obj_collision))
		{
			y+=5
		}
		if !(place_meeting(x,y-5,obj_collision))
		{
			y-=5
		}
	}
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
        key_run = 0
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
x += hsp
vsp=clamp(vsp,-20,10)
y += vsp
if (global.char == "Y")
{
    if (hsp == 0 && (vsp == 0 || (vsp > 0 && grounded)) && key_down == 0 && winning == 0)
	{
        sprite_index = spr_yaysuu_idle
	}
    if ((hsp > 0 || hsp < 0) && grounded && key_down == 0 && dshed == 0)
	{
        sprite_index = spr_yaysuu_walk
	}
    if ((hsp > 6 || hsp < -6) && grounded && key_down == 0)
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
        sprite_index = spr_yaysuu_fall
	}
    if (grounded && key_down && dsh == 0 && (!winning))
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
    if (hsp == 0 && (vsp == 0 || (vsp > 0 && grounded)) && dsh=0 && key_down == 0 && winning == 0)
        sprite_index = spr_teddy_idle
    if ((hsp > 0 || hsp < 0) && dsh=0 && grounded && key_down == 0 && dshed == 0)
        sprite_index = spr_teddy_walk
    if ((hsp > 6 || hsp < -6) && dsh=0 && grounded && key_down == 0)
        sprite_index = spr_teddy_run
    if (vsp < 0 && dsh == 0 && hurtd == 0 && global.hp > 0 && bounce == 0)
        sprite_index = spr_teddy_jump
    if (vsp > 0 && dsh == 0 && stmpd == 0 && hurtd == 0 && global.hp > 0 && (!grounded))
        sprite_index = spr_teddy_fall
    if (grounded && key_down && dsh == 0 && (!winning))
        sprite_index = spr_teddy_crouch
    if (winning == 1 && sprite_index != spr_teddy_winb && hsp == 0 && grounded)
        sprite_index = spr_teddy_win
    if dieded
    {
        sprite_index = spr_teddy_die
        image_angle -= hsp
    }
}
if (move == 1)
{
    image_xscale = 1
}
else if (move == -1)
{
    image_xscale = -1
}
if (sprite_index == spr_yaysuu_crouch || sprite_index == spr_yaysuu_slide || sprite_index == spr_teddy_crouch)
{
    mask_index = spr_crouchcollisionmask
}
else {
    mask_index = spr_collisionmask
}
