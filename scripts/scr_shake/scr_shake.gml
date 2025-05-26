// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shake(amount, additive){
	if (global.inlevel)
	{
		if (additive)
			obj_camera.vshakeoffset += amount
		else if (obj_camera.vshakeoffset < amount)
			obj_camera.vshakeoffset = amount
	}
}