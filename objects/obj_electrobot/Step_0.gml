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
	dying,
	fuckingdead
}

vsp += grv
grounded = place_meeting(x, y + vsp, obj_collision)

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
				state = electrobotstates.damaged
				candamage = false
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
					vsp = -20
					grounded = false
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
		if (y < -48)
		{
			state = electrobotstates.thunder
			y = -48
		}
		break;
	case electrobotstates.thunder:
		vsp = 0
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
				delay = 20
				attackcount--
			}
		}
		break;
	case electrobotstates.damaged:
		if (place_meeting(x + hsp, y, obj_collision))
			hsp = -hsp
		if (grounded)
		{
			if (global.bosshp == 0)
			{
				state = electrobotstates.dying
				delay = 150
				hsp = 0
				kablooeyjrtimer=0
				audio_stop_sound(global.currentsong)
			}
			else
			{
				candamage = true
				state = electrobotstates.idle
				delay = idledelay
				hsp = 0
				vulnerable = false
			}
		}
		else if (vsp > 0 && touchingplayer(x, y) && !obj_player.vulnerable) //gives extra time for the player to leave the boss' hitbox
			vsp = -5
		break;
	case electrobotstates.dying:
		delay--
		if (delay > 0)
		{
			if (kablooeyjrtimer > 0)
				kablooeyjrtimer--
			else
			{
				instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1,obj_explode_jr)
				kablooeyjrtimer = 5
			}
		}
		else
		{
			instance_create_depth(x,y,depth,obj_explode)
			state = electrobotstates.fuckingdead
			visible = false
		}
		break;
	case electrobotstates.fuckingdead:
		if (!instance_exists(obj_explode) && !instance_exists(obj_goalflag))
		{
			if (obj_player.x > 320)
				instance_create_depth(160,-64,depth,obj_fallinggoalflag)
			else
				instance_create_depth(480,-64,depth,obj_fallinggoalflag)
		}
		break;
}

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
