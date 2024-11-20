/// @description Insert description here
// You can write your code in this editor
if state=0
{
	gravityapplies=true
	hsp=0
	sprite_index=spr_electrobot_idle
	vulnerable=false
	cooldown=false
	if (obj_player.x>x && image_xscale=1) || (obj_player.x<x && image_xscale=-1)
	{
		image_xscale*=-1
	}
	if delaying=false
	{
		delay=2*room_speed
		delaying=true
	}
}
if state=6
{
	gravityapplies=true
	hsp=0
	sprite_index=spr_electrobot_vulnerable
	vulnerable=true
	if delaying=false
	{
		delay=2*room_speed
		delaying=true
	}
}
if state=8
{
	gravityapplies=true
	hsp=0
	sprite_index=spr_electrobot_idle
	vulnerable=false
	cooldown=true
	if (obj_player.x>x && image_xscale=1) || (obj_player.x<x && image_xscale=-1)
	{
		image_xscale*=-1
	}
	if delaying=false
	{
		delay=2*room_speed
		delaying=true
	}
}
if state=9
{
	gravityapplies=true
	hsp=0
	sprite_index=spr_electrobot_dying
	vulnerable=true
	cooldown=false
	if delaying=false
	{
		delay=5*room_speed
		delaying=true
	}
	if kablooeyjrtimer<=0
	{
		instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1,obj_explode_jr)
		kablooeyjrtimer=room_speed*0.0625
	}
	if kablooeyjrtimer>0
	{
		kablooeyjrtimer--
	}
}
if state=8 && image_alpha=1
{
	image_alpha=0
}
else {
	image_alpha=1
}
if state=6 && place_meeting(x,y,obj_player) && obj_player.vulnerable=false
{
	global.bosshp--
	if global.bosshp>0
	{
		delaying=false
		state=7
		vsp=-5
	}
	if global.bosshp=0
	{
		delaying=false
		state=9
		audio_stop_sound(mus_chillfields_boss)
	}
	audio_play_sound(snd_ouchie,1,false)
}
if state=7 && !place_meeting(x,y+vsp,obj_collision)
{
	hsp=3*-image_xscale
	sprite_index=spr_electrobot_hurt
}
if state=7 && place_meeting(x,y+vsp,obj_collision)
{
	delaying=false
	state=8
}
if delay>0
{
	delay-=1
}
if delay=0 && state=0 && delaying=true
{
	bounces=0
	boolettimes=0
	state=floor(random_range(1,5.9))
	if state=4
	{
		state=5
	}
	delaying=false
}
if delay=0 && state=4 && delaying=true
{
	gravityapplies=true
	bounces=0
	state=6
	delaying=false
}
if delay=0 && (state=6 || state=8) && delaying=true
{
	bounces=0
	state=0
	delaying=false
}
if delay=0 && state=9 && delaying=true
{
	instance_destroy()
	instance_create_depth(x,y,depth,obj_explode)
	instance_create_depth(x,y,depth,obj_nogoalflag)
}
if state=1 && jumpd=true && place_meeting(x,y+vsp,obj_collision)
{
	image_xscale=image_xscale*-1
	jumpd=false
	hsp=0
	state=0
}
if state=1 && jumpd=false
{
	gravityapplies=true
	jumpd=true
	audio_play_sound(snd_electrobotjump,0,false)
	sprite_index=spr_electrobot_jump
	image_index=0
	hsp=6*-image_xscale
	vsp=-10
}
if state=2
{
	gravityapplies=true
	hsp=6*-image_xscale
	sprite_index=spr_electrobot_speen
}
if state=2 && !audio_is_playing(snd_speen)
{
	audio_play_sound(snd_speen,1,true)
}
else if !(state=2)
{
	audio_stop_sound(snd_speen)
}
if state=2 && place_meeting(x+hsp,y,obj_collision)
{
	image_xscale*=-1
	bounces++
	vsp=-3
}
if state=2 && bounces=3
{
	hsp=0
	state=6
}
if state=3 && jumpd=false
{
	gravityapplies=false
	jumpd=true
	audio_play_sound(snd_electrobotjump,0,false)
	sprite_index=spr_electrobot_jump
	image_index=0
	hsp=2*-image_xscale
	vsp=-10
}
if state=3 && place_meeting(x,y,obj_turnaround)
{
	thundertimes=0
	state=4
}
if state=4
{
	jumpd=false
	hsp=0
	vsp=0
	if thundertimer=0 && thundertimes<3
	{
		thundertimer=0.9*room_speed
		thundertimes++
		instance_create_depth(obj_player.x-16,0,depth,obj_electrobot_warning)
	}
	if thundertimer>0
	{
		thundertimer--
	}
	if delaying=false
	{
		delay=room_speed*4
		delaying=true
	}
}
if state=5
{
	sprite_index=spr_electrobot_shoot
}
if state=5 && boolettimes=4
{
	state=6
}
if gravityapplies
{
	if !place_meeting(x,y+vsp,obj_collision)
	{
		vsp+=grv
	}
	if place_meeting(x,y+vsp,obj_collision)
	{
		vsp=0
	}
}
x+=hsp
y+=vsp