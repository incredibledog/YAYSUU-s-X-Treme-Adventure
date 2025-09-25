/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && obj_player.grounded
{
	obj_player.showarrow = true
	if (obj_player.key_upp) && talking=false
	{
		dialogueprogress=0
		talking=true
		obj_player.newstate = playerstates.inactive
		if (global.char == "Y")
			obj_player.sprite_index = spr_yaysuu_idle
		else if (global.char == "T")
			obj_player.sprite_index = spr_teddy_idle
		else if (global.char == "C")
			obj_player.sprite_index = spr_cotton_idle
	}
}
if talking
{
	if !instance_exists(obj_dialoguebox)
	{
		dialogueprogress++
		switch dialogueprogress
		{
			case 1:
			with instance_create_depth(0,0,depth,obj_dialoguebox)
			{
				text="who the fuck was that?"
				color="dred"
				name="Vassie"
				dialoguesound=snd_dialogue_vassie
			}
			break;
			case 6:
			talking=false
			obj_player.newstate=playerstates.normal
		}
	}
}