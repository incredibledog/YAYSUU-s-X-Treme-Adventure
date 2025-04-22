if (global.newlevel)
{
	sprite_index = spr_yaysuu_idle
	global.inv=0
	mask_index = spr_collisionmask
	if (room == room_chillfields_boss)
		state = playerstates.inactive
	else
		state = playerstates.normal
	newstate = state
	hsp = 0
	yearnedhsp = 0
	vsp = 0
	hurtt = 0
	grounded = true
	prevgrounded = true
	winning = false
	facingdirection = 1
}