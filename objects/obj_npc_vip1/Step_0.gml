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
				text="(Knock knock...)"
				color="white"
				dialoguesound=snd_knockknock
				playaudiosingle=true
			}
			break;
			case 2:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="Hey, why don't ya move it before I say a word that'll up this game's age rating?"
				color="purple"
				name="???"
			}
			break;
			case 3:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="(Seems you can't go in...)"
				color="white"
			}
			break;
			case 4:
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
				text="(Better get going!)"
				color="white"
			}
			break;
			case 2:
			talking=false
			obj_player.newstate=playerstates.normal
		}
	}
}