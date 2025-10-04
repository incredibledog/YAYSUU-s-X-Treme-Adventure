/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_stageclear)  
{
	if touchingplayer(x, y) && global.mainplayer.grounded && !(instance_exists(obj_dialoguebox))
	{
		global.mainplayer.showarrow = true
		if (global.mainplayer.key_upp) && talking=false
		{
			dialogueprogress=0
			talking=true
			global.mainplayer.newstate = playerstates.inactive
			global.mainplayer.sprite_index = global.playersprites[playersprite.idle]
		}
	}
}
else {
	talking=false
	dialogueprogress=0
	global.mainplayer.showarrow = false
}