// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setlogicobject(instance, toggle, value){
	with (instance)
	{
		if (object_index == obj_movingplatform_toggled || object_index == obj_movingplatform)
		{
			if (toggle)
				wantedside = 1
			else
				wantedside = 0
			moving = true
		}
		else if (object_index == obj_conveyor)
		{
			if (toggle)
				directionmodifier = value
			else
				directionmodifier = 1
		}
		else if (object_index == obj_dashpad)
		{
			if (toggle)
				launchdirection = -1
			else
				launchdirection = 1
		}
	}
}