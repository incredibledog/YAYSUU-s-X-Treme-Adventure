/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && springtmr=0
	{
		springtmr=room_speed*0.5
		audio_play_sound(snd_boing,1,false)
	}
}
if springtmr>0
{
	sprite_index=spr_springanim
	springtmr-=1
}
else if springtmr=0
{
	sprite_index=spr_spring
}