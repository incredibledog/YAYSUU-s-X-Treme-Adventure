/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) && springtmr=0
{
	obj_player.vsp = -14 * image_yscale
	springtmr=30
	audio_play_sound(snd_boing,1,false)
	if (obj_player.state == playerstates.stomp)
		obj_player.newstate = playerstates.bounce
}
if springtmr>0
{
	sprite_index=spr_springanim
	springtmr--
}
else
	sprite_index=spr_spring