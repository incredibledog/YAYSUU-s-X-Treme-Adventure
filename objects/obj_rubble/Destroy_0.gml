/// @description Insert description here
// You can write your code in this editor
instance_destroy(mycollision)
audio_play_sound(snd_breakrubble, 1, false, 1, 0, random_range(0.8, 1.2))
obj_camera.vshakeoffset += 4
repeat (3)
{
	with(instance_create_depth(x, y, depth, obj_rubbledebris))
	{
		if (other.destroyedbyplayer)
		{
			hsp = obj_player.hsp + random_range(-4, 4)
			vsp = obj_player.vsp + random_range(0, 6)
		}
		else
		{
			hsp = random_range(-6, 6)
			vsp = random_range(0, 8)
		}
		rsp = random_range(-10, 10)
	}
}