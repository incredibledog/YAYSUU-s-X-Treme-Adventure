/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_notification)
{
	if global.key_rightp
	{
		audio_play_sound(snd_move,1,false,global.sndvol)
		chos++
	}
	if global.key_leftp
	{
		audio_play_sound(snd_move,1,false,global.sndvol)
		chos--
	}
	chos=clamp(chos,1,9)
	if global.key_menuquit
	{
		audio_play_sound(snd_nahnvm,1,false,global.sndvol)
		instance_destroy()
	}
}
if global.key_runp
{
	with instance_create_depth(0,0,depth-1,obj_notification)
	{
		text="Are you sure you want to wipe ALL achievement data?"
		color="red"
		choicer=true
		notifid=2
	}
}