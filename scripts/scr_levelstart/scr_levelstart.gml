// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function levelstart()
{
	audio_resume_all()
	global.scoreadd=0
	global.coins=0
	if !(audio_is_playing(global.currentsong))
	{
		audio_stop_all()
		audio_play_sound(global.currentsong,1,true);
	}
	// This is how the hud gets made. Don't Fucking Touch unless yk what your doing!!!
	if global.checkpoint=false
	{
		instance_create_depth(obj_spawn.x,obj_spawn.y,0,obj_player)
	}
	else if global.checkpoint=true
	{
		instance_create_depth(obj_checkpoint.x,obj_checkpoint.y,0,obj_player)
	}
	if !instance_exists(obj_hud)
	{
		global.score=0
		instance_create_layer(32,128,"gui",obj_hud)
	}
	instance_create_layer(0,0,"endlevel",obj_fadeblack)
	instance_create_layer(0,0,"gui",obj_mobilecontrols)
	instance_create_layer(288,192,"gui",obj_titlecard)
	instance_create_layer(320,160,"endlevel",obj_stageclear)
	instance_create_layer(32,416,"gui",obj_lives)
	instance_create_layer(128,416,"gui",obj_subtitle)
	instance_create_layer(320,160,"endlevel",obj_stageclear)
	instance_create_layer(0,0,"gui",obj_pause)
	instance_create_depth(0,0,0,obj_p_layer1)
	instance_create_depth(0,0,0,obj_p_layer2)
	instance_create_depth(0,0,0,obj_camera)
	obj_hud.hide=false
}