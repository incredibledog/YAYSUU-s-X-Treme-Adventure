/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x,obj_player.y,1)
	if (place_meeting(x,y+obj_player.vsp,obj_player)) && jumpscare=false && global.inv=false
	{
		jumpscare=true
		audio_play_sound(snd_jumpscare,1,false)
	}
}