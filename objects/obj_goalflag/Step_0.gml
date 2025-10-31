/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && !touched
{
	touched=true
	if obj_player.state=playerstates.hangglide
	{
		obj_player.newstate=playerstates.normal
		obj_player.state=playerstates.normal
	}
	endtimer=120
	if global.char="Y"
		sprite_index=spr_goalflag_transition
	else if global.char="T"
		sprite_index=spr_goalflag_transition_t
	else if global.char="C"
		sprite_index=spr_goalflag_transition_cotton
	if room=room_glowstickcity
		audio_play_sound(snd_glowstickcity_flagspin,1,false)
	else
		audio_play_sound(snd_flagspin,1,false)
	global.score += global.scoreadd + obj_hud.timebonus + (global.coins * 10)
}
if endtimer>0 && touched
	endtimer--
else if endtimer==0 && touched && !winning
{
	winning=true
	audio_stop_all()
}