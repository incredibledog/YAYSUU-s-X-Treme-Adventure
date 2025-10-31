if touchingplayer(x, y) && !touched
{
	touched=true
	if obj_player.state=playerstates.hangglide
	{
		obj_player.newstate=playerstates.normal
		obj_player.state=playerstates.normal
	}
	endtimer=120
	sprite_index=spr_goalflag_transition_cotton
	global.score += global.scoreadd + obj_hud.timebonus + (global.coins * 10)
}
if endtimer>0 && touched
	endtimer--
else if endtimer==0 && touched
{
	audio_stop_all()
}