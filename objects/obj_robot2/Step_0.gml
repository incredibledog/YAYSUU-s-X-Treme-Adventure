/// @description Insert description here
// You can write your code in this editor
movingobject_start()
if (image_xscale == 1)
	spotted = obj_player.x == (clamp(obj_player.x, x, x + 384))
else
	spotted = obj_player.x == (clamp(obj_player.x, x - 384, x))

if (insecret && spotted)
{
	if (secretsection.image_alpha == 1)
		spotted = false
}

if spotted
{
	if shoottimer>0
	{
		shoottimer--
		if (shoottimer == 20)
			sprite_index = spr_robot2_prefire
	}
	else
	{
		with (instance_create_depth(x + (24 * image_xscale), y - 6, depth + 1, obj_robot2_boolet))
			image_xscale = other.image_xscale
		audio_play_sound(snd_shoot,1,false)
		sprite_index=spr_robot2_shoot
		shoottimer=60
	}
}
else
{
	shoottimer = 60
	sprite_index=spr_robot2
}
movingobject_end()
event_inherited()