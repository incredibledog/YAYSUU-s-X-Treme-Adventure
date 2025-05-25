// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_debugmessage(text){
	if (global.showcollision)
	{
		if (!instance_exists(obj_debugmessage))
			global.debugmessageoffset = 0
		with (instance_create_depth(640, 480 - global.debugmessageoffset, depth, obj_debugmessage))
			messagetext = text
	}
}