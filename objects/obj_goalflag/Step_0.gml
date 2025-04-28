/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && !touched
{
	touched=true
	endtimer=120
	if global.char="Y"
		sprite_index=spr_goalflag_transition
	else if global.char="T"
		sprite_index=spr_goalflag_transition_t
	else if global.char="C"
		sprite_index=spr_goalflag_transition_cotton
	audio_play_sound(snd_flagspin,1,false)
	global.score+=global.scoreadd+obj_hud.timebonus+(global.coins*5)
	ini_open("savedata.ini")
	if global.score > ini_read_real("records", string(room) + "_score", 0) && !global.inboss
		ini_write_real("records", string(room) + "_score", global.score)
	if obj_hud.timer < ini_read_real("records", string(room) + "_time", 359999) && !global.inboss
		ini_write_real("records", string(room) + "_time", obj_hud.timer)
	ini_close()
}
if endtimer>0 && touched
	endtimer--
else if endtimer=0 && touched && !winning
{
	winning=true
	audio_stop_all()
	virtual_key_delete(6)
	virtual_key_delete(7)
	if global.char="Y"
	{
		audio_play_sound(mus_yaysuuwin,1,false)
		audio_group_stop_all(voicelines)
		audio_play_sound(snd_yaysuuwinstage,1,false)
	}
	else if global.char="T"
	{
		audio_play_sound(mus_teddywin,1,false)
		audio_group_stop_all(voicelines)
		audio_play_sound(snd_teddywinstage,1,false)
	}
	else if global.char="C"
	{
		audio_play_sound(mus_cottonwin,1,false)
	}
}