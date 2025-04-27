/// @description Insert description here
// You can write your code in this editor
enum electrobotstates
{
    idle,
    jump,
	thunder,
    spin,
	inactive,
	damaged,
	shoot,
	dying
}

if (gravityapplies)
	grounded = place_meeting(x, y + vsp + grv, obj_collision)
else
	grounded = false

vulnerable = false
candamage = true
switch (state)
{
	case electrobotstates.idle:
		hsp = 0
		if (obj_player.x > x)
			image_xscale = 1
		else if (obj_player.x < x)
			image_xscale = -1
		if (!hasdamaged)
		{
			vulnerable = true
			if (touchingplayer(x, y) && !obj_player.vulnerable)
			{
				delay = 1337
				with (obj_player)
					scr_player_trybounce()
				candamage = false
				state = electrobotstates.damaged
				vsp = -5
				hsp = -3 * image_xscale
				audio_play_sound(snd_ouchie,1,false)
				global.bosshp--
				obj_camera.vshakeoffset = 30
				hasdamaged = true
				if (global.bosshp == 3) //it gets HARDERS!?
					idledelay = 100
				grounded = false
			}
		}
		if (delay > 0)
			delay--
		else if (grounded)
		{
			vulnerable = false
			state = choose(electrobotstates.jump, electrobotstates.spin, electrobotstates.shoot)
			attackcount = 3
			hasdamaged = false
			switch (state) //ah yes switch statements in switch statements
			{
				case electrobotstates.jump:
					gravityapplies = false
					break;
				case electrobotstates.spin:
					audio_play_sound(snd_speen,1,true)
					break;
				case electrobotstates.shoot:
					sprite_index = spr_electrobot_shoot
					image_index = 2
					delay = 15
					break;
			}
		}
		break;
	case electrobotstates.jump:
		y = ((y + 64) / jumpsmoothing) - 64
		if (y < -48)
		{
			state = electrobotstates.thunder
			y = -48
		}
		break;
	case electrobotstates.thunder:
		if (delay > 0)
			delay--
		else
		{
			if (attackcount == 0)
			{
				delay = idledelay
				state = electrobotstates.idle
				vsp = 5
				gravityapplies = true
				x = obj_player.x
			}
			else
			{
				delay = 54
				attackcount--
				instance_create_depth(obj_player.x-16,0,depth,obj_electrobot_warning)
			}
		}
		break;
	case electrobotstates.spin:
		hsp = image_xscale * 6
		if (place_meeting(x + hsp, y, obj_collision))
		{
			vsp = -3
			image_xscale = -image_xscale
			hsp = image_xscale * 6
			attackcount--
			grounded = false
		}
		if (attackcount == 0 && grounded)
		{
			delay = idledelay
			state = electrobotstates.idle
			audio_stop_sound(snd_speen)
		}
		break;
	case electrobotstates.shoot:
		if (delay > 0)
			delay--
		else
		{
			if (attackcount == 0)
			{
				delay = idledelay
				state = electrobotstates.idle
			}
			else
			{
				image_index = 0
				with (instance_create_depth(x,y,depth+1,obj_electrobot_boolet))
					image_xscale = other.image_xscale	
				delay = 30
				attackcount--
			}
		}
		break;
	case electrobotstates.damaged:
		if (place_meeting(x + hsp, y, obj_collision))
			hsp = 0
		if (grounded)
		{
			if (global.bosshp == 0)
			{
				state = electrobotstates.dying
				delay = 300
				hsp = 0
				kablooeyjrtimer=0
			}
			else
			{
				candamage = true
				state = electrobotstates.idle
				delay = idledelay
				hsp = 0
			}
		}
		break;
	case electrobotstates.dying:
		if (delay > 0)
		{
			delay--
			if (kablooeyjrtimer > 0)
				kablooeyjrtimer--
			else
			{
				instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1,obj_explode_jr)
				kablooeyjrtimer=15
			}
		}
		else
		{
			instance_create_depth(x,y,depth,obj_explode_jr)
			state = electrobotstates.inactive
			visible = false
		}
		break;
}

if (gravityapplies)
	vsp += grv

if (grounded)
{
	var loopprevent = 0
    while (!place_meeting(x, (y + checkscale), obj_playercollision) && loopprevent < maxloop)
    {
        y += checkscale
        loopprevent++
    }
    vsp = 0
}
x += hsp
y += vsp

var oldsprite = sprite_index
switch (state)
{
	case electrobotstates.idle:
		if (vulnerable)
			sprite_index = spr_electrobot_vulnerable
		else
			sprite_index = spr_electrobot_idle
		break;
	case electrobotstates.jump:
		sprite_index = spr_electrobot_jump
		break;
	case electrobotstates.spin:
		sprite_index = spr_electrobot_speen
		break;
	case electrobotstates.damaged:
		sprite_index = spr_electrobot_hurt
		break;
	case electrobotstates.shoot:
		sprite_index = spr_electrobot_shoot
		break;
	case electrobotstates.dying:
		sprite_index = spr_electrobot_dying
		break;
}
if (sprite_index != oldsprite)
	image_index = 0
	
if (sprite_index == spr_electrobot_jump && image_index == 6)
	image_index = 2

event_inherited()
