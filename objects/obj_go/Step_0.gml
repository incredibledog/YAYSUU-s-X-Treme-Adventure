/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	var totalSpeed = global.firstplayertouch.hsp * global.firstplayertouch.hsp + global.firstplayertouch.vsp * global.firstplayertouch.vsp;
	if(totalSpeed < boostspeed * boostspeed){
	    var dir = point_direction(0,0,global.firstplayertouch.hsp,global.firstplayertouch.vsp);
	    global.firstplayertouch.hsp = lengthdir_x(boostspeed, dir);
	    global.firstplayertouch.vsp = lengthdir_y(boostspeed, dir);
	}

	audio_play_sound(snd_stopngo,1,false,global.sndvol)
	instance_destroy()
}