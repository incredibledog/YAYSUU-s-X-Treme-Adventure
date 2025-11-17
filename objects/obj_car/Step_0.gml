/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	if (vbounce != 0)
		global.firstplayertouch.vsp = vbounce * image_yscale
	if (hbounce != 0)
		global.firstplayertouch.hsp = hbounce * image_xscale
	audio_play_sound(snd_stopngo,1,false,global.sndvol)
	audio_play_sound(choose(snd_carhorn_1,snd_carhorn_2),1,false,1,0,random_range(1,2))
	global.scoreadd+=10
	if (global.firstplayertouch.state == playerstates.stomp)
		global.firstplayertouch.newstate = playerstates.bounce
	instance_destroy()
	global.firstplayertouch.grounded = false
	global.firstplayertouch.slopey = false
	global.firstplayertouch.prevgrounded = false
	global.firstplayertouch.prevslopey = false
}
x+=5
if place_meeting(x,y,obj_turnaround)
{
	instance_destroy()
}