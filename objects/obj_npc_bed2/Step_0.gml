/// @description Insert description here
// You can write your code in this editor
event_inherited()
if talking && !talked
{
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch dialogueprogress
		{
			case 1:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				if global.char="Y"
				{
					text="(You feel well rested already.)"
					color="white"
				}
				else {
					text="(There's no time to relax!)"
					color="white"
				}
			}
			break;
			case 2:
			talking=false
			talked=true
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}
else if talking && talked
{
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch dialogueprogress
		{
			case 1:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="(There's no time to relax!)"
				color="white"
			}
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}