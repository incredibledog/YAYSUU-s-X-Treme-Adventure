/// @description Insert description here
// You can write your code in this editor
if touched=false
{
		touched=true
		endtimer=120
}
if endtimer>0 && touched=true
{
	endtimer-=1
}
if endtimer=0 && touched=true && winning=false
{
	winning=true
	audio_stop_all()
	virtual_key_delete(6)
	virtual_key_delete(7)
	instance_destroy(obj_pause)
	instance_destroy(obj_mobilecontrols)
	if global.char="Y"
	{
		audio_play_sound(mus_yaysuuwin,1,false,global.sndvol)
		audio_play_sound(snd_yaysuuwinboss,1,false,global.sndvol)
	}
	else if global.char="T"
	{
		audio_play_sound(mus_teddywin,1,false,global.sndvol)
		audio_play_sound(snd_teddywinboss,1,false,global.sndvol)
	}
}