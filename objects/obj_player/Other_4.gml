if (global.inlevel)
{
	if (global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.nextroom || global.levelloadtype == loadtype.respawn)
	{
		mask_index = spr_collisionmask
		if (room == room_chillfields_boss)
			state = playerstates.inactive
		else
			state = playerstates.normal
		ouchies = false
		deathies = false
		newstate = state
		hsp = 0
		yearnedhsp = 0
		vsp = 0
		hurtt = 0
		grounded = true
		prevgrounded = true
		winning = false
		facingdirection = 1
		image_xscale = 1
		image_angle = 0
		slopey = false
		prevslopey = false
		inwater = false
		if (global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.respawn)
		{
			if (global.char == "Y")
			{
				rundamagespeed = 12
				smashbump = 4
				sprite_index = spr_yaysuu_idle
			}
			else if (global.char == "T")
			{
				rundamagespeed = 8
				smashbump = 4
				sprite_index = spr_teddy_idle
			}
			else if (global.char == "C")
			{
				rundamagespeed = 12
				smashbump = 1
				sprite_index = spr_cotton_idle
			}
			if (room == room_tutorial)
				whooshcolor = #C2C3C7
			else
				whooshcolor = #FFF1E8
			if global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.nextroom
			{
				global.checkpoint = false
			}
		}
	}
	
	if global.checkpoint == true && instance_exists(obj_checkpoint)
	{
		x = obj_checkpoint.x
		y = obj_checkpoint.y
	}
	else
	{
		x = obj_spawn.x
		y = obj_spawn.y
	}
	obj_camera.x = x
	obj_camera.y = y
}