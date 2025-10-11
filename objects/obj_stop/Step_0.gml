/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && !goaway
{
	goaway=true
	audio_play_sound(snd_stopngo,1,false)
	global.firstplayertouch.newstate = playerstates.golfstop
	gottemplayer = global.firstplayertouch
}
else if goaway && gottemplayer != noone && gottemplayer.state != playerstates.golfstop
	image_alpha-=0.05
if image_alpha=0
	instance_destroy()