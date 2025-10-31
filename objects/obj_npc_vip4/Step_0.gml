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
				text=""
				color="white"
				dialoguesound=snd_knockknock
				playaudiosingle=true
			}
			break;
			case 2:
			talking=false
			talked=true
			obj_player.newstate=playerstates.normal
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
				text="you don't belong here, do you?"
				color="white"
			}
			break;
			case 2:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text=""
				color="white"
			}
			break;
			case 3:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="you don't belong here, do you?"
				color="white"
			}
			break;
			case 4:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text=""
				color="white"
			}
			break;
			case 5:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="you don't belong here, do you?"
				color="white"
			}
			break;
			case 6:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text=""
				color="white"
			}
			break;
			case 7:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="you don't belong here, do you?"
				color="white"
			}
			break;
			case 8:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text=""
				color="white"
			}
			break;
			case 9:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="you don't belong here, do you?"
				color="white"
			}
			break;
			case 10:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text=""
				color="white"
			}
			break;
			case 11:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="you don't belong here, do you?"
				color="white"
			}
			obj_player.newstate=playerstates.normal
			break;
			case 12:
			talking = false
			obj_player.newstate=playerstates.normal
			break;
		}
	}
}