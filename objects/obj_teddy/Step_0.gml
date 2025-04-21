/// @description platform logic
// controls (MY GOD this is clunky)
/*key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_space);
key_dash = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("E"));
key_run = keyboard_check(ord("C")) || keyboard_check(vk_shift);
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_downp = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
// initial physics
var move = key_right - key_left

hsp = (wsp*move)+dsh+hpush
vsp = vsp+grv
// doublejumping
if !(place_meeting(x,y+vsp,obj_collision)) // NOT on floor
&& !(vsp>=0 && (place_meeting(x,y+vsp,obj_semisolid_a)) && !(place_meeting(x,y+vsp,obj_semisolid_b)))
&& key_jump // jumping
&& (jmps=0 || jmps=1)
&& dsh=0 // no dash
&& hurtd=false // not hurt
&& dieded=false // i mean, sure, let's check if we're not dead.
{
	vsp=jmp
	jmps=2
	stmpd=false
	audio_play_sound(snd_doublejump,1,false)
	image_index=0
}
// sliding
if ((place_meeting(x,y+vsp,obj_collision)) || (vsp>=0 && (place_meeting(x,y+vsp,obj_semisolid_a)) && !(place_meeting(x,y+vsp,obj_semisolid_b)))) // on floor
&& key_dash // dashing
&& dsh=0 // haven't got any dash
&& dieded=false
&& winning=false
{
	dsh=17*image_xscale
	audio_play_sound(snd_slide,1,false)
	sprite_index=spr_teddy_run
	image_index=0
}
// running
if key_run // running
&& (move>0 || move<0) // facing a direction
&& !(place_meeting(x+hsp,y,obj_collision)) // NOT touching a wall
{
	wsp = 7
	jmp = -5
}
else
{
	wsp = 4
	jmp = -7
}
// stomping
if !(place_meeting(x,y+vsp,obj_collision))
&& !(vsp>=0 && (place_meeting(x,y+vsp,obj_semisolid_a)) && !(place_meeting(x,y+vsp,obj_semisolid_b)))
&& key_downp
&& stmpd=false
&& dieded=false
{
	stmpd=true
	hsp=0
	audio_play_sound(snd_stomp,1,false)
}
if stmpd=true
{
	vsp=10
	sprite_index=spr_teddy_stomp
}
// dash deceleration
if dsh>0
{
	dsh=dsh-0.5
}
if dsh<0
{
	dsh=dsh+0.5
}
// hpush deceleration
if hpush>0
{
	hpush-=0.4
}
if hpush<0
{
	hpush+=0.4
}
// jumping
if ((place_meeting(x,y+vsp,obj_collision)) || (vsp>=0 && (place_meeting(x,y+vsp,obj_semisolid_a)) && !(place_meeting(x,y+vsp,obj_semisolid_b)))) // on floor
&& key_jump // jumped
&& jmps=0
&& !winning
{
	if !(place_meeting(x,y+jmp,obj_collision))
	{
		vsp=jmp
		jmps=1
		key_down=0
		dsh=0
		audio_play_sound(snd_jump,1,false)
		image_index=0
	}
}
// crouching
if ((place_meeting(x,y+vsp,obj_collision)) || (vsp>=0 && (place_meeting(x,y+vsp,obj_semisolid_a)) && !(place_meeting(x,y+vsp,obj_semisolid_b))))
&& key_down
&& dsh=0
{
	hsp=0
}
// DIE.
if (place_meeting(x,y,obj_die)) && global.hp>0
{
	global.hp=0
}
// hurt
if ((place_meeting(x,y,obj_enemy)) && global.hp>0 && hurtt=0 && vulnerable)
|| ((place_meeting(x,y,obj_harmful)) && global.hp>0 && hurtt=0)
{
	hurtd=true
	obj_camera.vshakeoffset=30
	hurtt=room_speed*2
	vsp=-3
	global.hp=global.hp-1
	if global.scoreadd>=50 {
		global.scoreadd-=50
	}
	else {
		global.scoreadd=0
	}
	audio_play_sound(snd_ouchie,1,false)
}
if hurtt>0
{
	hurtt=hurtt-1
}
if hurtt=0
{
	hurtd=false
}
if dsh=0 && stmpd=false && wsp=4
{
	vulnerable=true
}
else
{
	vulnerable=false
}
// hurt cooldown flash
if (hurtt > 0) && (global.hp>0)
{
    // Toggle visibility by changing alpha
    if (image_alpha == 1)
        image_alpha = 0;
    else
        image_alpha = 1;
}
else
{
    // Reset alpha to fully visible
    image_alpha = 1;
}
// spring code
if (instance_exists(obj_spring))
{
	if (place_meeting(x,y,obj_spring)) && !hurtd
	{
		vsp=jmp*2
		stmpd=false
	}
}
if (instance_exists(obj_diagspring))
{
	if (place_meeting(x,y,obj_diagspring)) && !hurtd
	{
		vsp=jmp*2
		obj_camera.vshakeoffset=30
		stmpd=false
	}
}
if (instance_exists(obj_sidespring))
{
	if (place_meeting(x,y,obj_sidespring)) && !hurtd
	{
		obj_camera.vshakeoffset=30
		stmpd=false
	}
}
// died
if global.hp=0 && dieded=false
{
	dieded=true
	if global.lives>=1
	{
		global.lives-=1
	}
	vsp=-10
	sprite_index=spr_teddy_die
	audio_stop_all()
	audio_play_sound(mus_dead,1,false)
}
if dieded=true
{
	hsp=0
	move=0
	image_xscale=1
}
if instance_exists(obj_goalflag)
{
	if obj_goalflag.winning=true
	{
		winning=true
	}
}
if instance_exists(obj_goalflag)
{
	if obj_goalflag.winning=true && (place_meeting(x,y+vsp,obj_collision))
	{
		hsp=0
		move=0
	}
}
if dieded=true and !(audio_is_playing(mus_dead))
{
	if global.lives=0
	{
		instance_destroy(obj_hud)
		global.nextroom=room_gameover
	}
	else {
		global.nextroom=room
	}
	obj_fadeblack.fading=true
}
// hurt animation
if hurtd=true && !(place_meeting(x,y+vsp,obj_collision)) && !(vsp>=0 && (place_meeting(x,y+vsp,obj_semisolid_a))) && dieded=false
{
	hsp=-3*image_xscale
	move=0
	sprite_index=spr_teddy_ouch
}
// horizontal collision
if (place_meeting(x+hsp,y,obj_collision)) // touching wall horizontally
{
	while !(place_meeting(x+sign(hsp),y,obj_collision))
	{
		x=x+sign(hsp)
	}
	hsp=0
	dsh=0
	key_run=0
}
// horizontal semisolid collision
if (place_meeting(x+hsp,y,obj_semisolid_a)) && !(place_meeting(x,y,obj_semisolid_b))
{
	while !(place_meeting(x+sign(hsp),y,obj_semisolid_a))
	{
		x=x+sign(hsp)
	}
	hsp=0
	dsh=0
	key_run=0
}
// vertical collision
if (place_meeting(x,y+vsp,obj_collision))// touching floor or ceiling
&& dieded=false
{
	while !(place_meeting(x,y+sign(vsp),obj_collision))
	{
		y=y+sign(vsp)
	}
	vsp=0
	jmps=0
	if stmpd
	{
		stmpd=false
		obj_camera.vshakeoffset=30
	}
	hurtd=false
}
// semisolid collision
if (vsp > 0 && place_meeting(x, y + vsp, obj_semisolid_a) && !(place_meeting(x,y+vsp,obj_semisolid_b))) // Check for collision with semisolid from below
&& dieded=false
{
    while (!place_meeting(x, y + sign(vsp), obj_semisolid_a))
    {
        y += sign(vsp);
    }
    vsp = 0;
    jmps = 0;
    if (stmpd)
    {
        stmpd = false;
        obj_camera.vshakeoffset = 30;
    }
    hurtd = false;
}
x=x+hsp
y=y+vsp
// animations
if hsp=0 && vsp=0 && key_down=0 && dsh=0 && winning=false
{
	sprite_index=spr_teddy_idle
}
if (move>0 || move<0) && vsp=0 && key_down=0 && dsh=0
{
	sprite_index=spr_teddy_walk
}
if (move>0 || move<0) && vsp=0 && key_down=0 && wsp>4
{
	sprite_index=spr_teddy_run
}
if vsp<0 && dsh=0 && hurtd=false && global.hp>0
{
	sprite_index=spr_teddy_jump
}
if vsp>0 && dsh=0 && stmpd=false && hurtd=false && global.hp>0
{
	sprite_index=spr_teddy_fall
}
if vsp=0 && key_down && dsh=0 && winning=false
{
	sprite_index=spr_teddy_crouch
}
if winning=true && sprite_index!=spr_teddy_winb
{
	sprite_index=spr_teddy_win
}
// turnaround script
if move=1
{
	image_xscale=1
}
if move=-1
{
	image_xscale=-1
}