// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_debugmessage(text){
	if (global.showcollision)
	{
		var makenew = true
		if (instance_exists(obj_debugmessage))
		{
			with (obj_debugmessage)
			{
				if (messagetext == text)
				{
					delay = 240
					x = 630
					makenew = false
				}
			}
		}
		else
			global.debugmessageoffset = 0
		if (makenew)
		{
			with (instance_create_depth(630, 480 - global.debugmessageoffset, depth, obj_debugmessage))
				messagetext = text
		}
	}
}