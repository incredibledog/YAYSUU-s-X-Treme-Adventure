if (global.inlevel)
{
	if (global.newlevel)
	{
		sprite_index = spr_yaysuu_idle
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
		if (global.char == "Y")
		{
			rundamagespeed = 12
		}
		else if (global.char == "T")
		{
			rundamagespeed = 8
		}
		image_angle = 0
	}
}