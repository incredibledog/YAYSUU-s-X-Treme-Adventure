// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function roomstart()
{
	if global.hubstart=false
	{
		global.hubstart=true
		global.checkpoint=false
		global.score=0
		global.scoreadd=0
		global.coins=0
		if !audio_is_playing(global.currentsong)
		{
			audio_stop_all()
			audio_play_sound(global.currentsong,1,true);
		}
		// This is how the hud gets made. Don't Fucking Touch unless yk what your doing!!!
		instance_create_depth(obj_spawn.x,obj_spawn.y,300,obj_player)
		instance_create_depth(obj_spawn.x,obj_spawn.y-32,300,obj_uparrow)
		instance_create_layer(128,416,"gui",obj_subtitle)
		//instance_create_layer(0,0,"gui",obj_mobilecontrols)
		//instance_create_layer(0,0,"gui",obj_pause)
		//instance_create_layer(0,0,"endlevel",obj_fadeblack)
		instance_create_depth(0,0,0,obj_p_layer1)
		instance_create_depth(0,0,0,obj_p_layer2)
		//instance_create_depth(0,0,0,obj_camera)
	}
}