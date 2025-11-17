/// @description Insert description here
// You can write your code in this editor
if room=room_idlogo
{
	audio_master_gain(global.musvol)
	video_open("idlogo.mp4")
	video_pause()
	video_seek_to(0)
	loadtime=50
}
if room=room_idalogo
{
	sprite_index=spr_idalogo
	jingle=mus_idalogo
}
//audio_play_sound(jingle,1,false,global.sndvol)