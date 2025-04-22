/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	var totalSpeed = obj_player.hsp * obj_player.hsp + obj_player.vsp * obj_player.vsp;
	if(totalSpeed < boostspeed * boostspeed){
	    var dir = point_direction(0,0,obj_player.hsp,obj_player.vsp);
	    obj_player.hsp = lengthdir_x(boostspeed, dir);
	    obj_player.vsp = lengthdir_y(boostspeed, dir);
	}

	audio_play_sound(snd_stopngo,1,false)
	instance_destroy()
}