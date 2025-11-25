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
				name="Vassie"
				text="from skibidi toilet's sigmaer adventure to this?"
				color="pink"
			}
			break;
			case 2:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				name="Vassie"
				text="zoo wee mama! talk about a glow-DOWN!"
				color="pink"
			}
			break;
			case 3:
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
				name="Vassie"
				text="they're already making the rise and fall of fazmade... i can TASTE it..."
				color="pink"
			}
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}