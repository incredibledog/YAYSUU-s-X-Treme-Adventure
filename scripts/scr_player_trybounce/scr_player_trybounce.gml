// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_trybounce(){
	if (state == playerstates.stomp && newstate == state && global.char == "Y")
	{
		newstate = playerstates.bounce
		if (abs(hsp) > walkspeed)
			vsp = bounceheightbigger
		else
			vsp = bounceheight
	    audio_play_sound(snd_bounce, 1, false)
	    grounded = false
		prevgrounded = false
		dshed = false
	}
}