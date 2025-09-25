/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	if (vbounce != 0)
		obj_player.vsp = vbounce * image_yscale
	if (hbounce != 0)
		obj_player.hsp = hbounce * image_xscale
	audio_play_sound(snd_stopngo,1,false)
	audio_play_sound(choose(snd_carhorn_1,snd_carhorn_2),1,false,1,0,random_range(1,2))
	global.scoreadd+=10
	if (obj_player.state == playerstates.stomp)
		obj_player.newstate = playerstates.bounce
	instance_destroy()
	obj_player.grounded = false
	obj_player.slopey = false
	obj_player.prevgrounded = false
	obj_player.prevslopey = false
}
x+=5
if place_meeting(x,y,obj_turnaround)
{
	instance_destroy()
}