/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_stageclear)  
{
	if touchingplayer(x, y) && obj_player.grounded && !(instance_exists(obj_dialoguebox))
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
}
else {
	talking=false
	dialogueprogress=0
	obj_player.showarrow = false
}