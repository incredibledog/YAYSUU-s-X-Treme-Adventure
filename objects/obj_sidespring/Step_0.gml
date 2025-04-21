/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) && springtmr=0
{
	obj_player.hsp = 20 * self.image_xscale
	springtmr=30
	audio_play_sound(snd_boing,1,false)

}
if springtmr>0
{
	sprite_index=spr_springsideanim
	springtmr--
}
else
	sprite_index=spr_springside