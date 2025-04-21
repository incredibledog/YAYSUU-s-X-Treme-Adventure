/// @description Insert description here
// You can write your code in this editor
if (image_xscale == 1)
	spotted = obj_player.x == (clamp(obj_player.x, x, x + 384))
else
	spotted = obj_player.x == (clamp(obj_player.x, x - 384, x))

if spotted
{
	if shoottimer>0
		shoottimer--
	else
	{
		with (instance_create_depth(x + (32 * image_xscale), y - 8, depth + 1, obj_robot2_boolet))
			image_xscale = other.image_xscale
		audio_play_sound(snd_shoot,1,false)
		sprite_index=spr_robot2_shoot
		shoottimer=60
	}
}
else
	shoottimer = 80