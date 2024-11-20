/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && touched=false
	{
		touched=true
		endtimer=room_speed*2
		if global.char="Y"
		{
			sprite_index=spr_goalflag_transition
		}
		else if global.char="T"
		{
			sprite_index=spr_goalflag_transition_t
		}
		audio_play_sound(snd_flagspin,1,false)
	}
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
		audio_play_sound(mus_yaysuuwin,1,false)
	}
	else if global.char="T"
	{
		audio_play_sound(mus_teddywin,1,false)
	}
}